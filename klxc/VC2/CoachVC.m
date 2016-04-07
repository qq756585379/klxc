//
//  CoachVC.m
//  klxc
//
//  Created by sctto on 16/3/29.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "CoachVC.h"
#import "CoachModel.h"
#import "CoachCell.h"
#import "MyBtn.h"

@interface CoachVC () <UIScrollViewDelegate,UITableViewDataSource,UITableViewDelegate>
{
    UIScrollView   *_scrollView;
    MyBtn          *_distanceBtn;
    MyBtn          *_priceBtn;
    UIButton       *_selectedBtn;
    UITableView    *_tv1;
    UITableView    *_tv2;
    int            _curPage1;
    int            _curPage2;
    NSMutableArray *_dataArray1;
    NSMutableArray *_dataArray2;
}
@end

@implementation CoachVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataArray1=[NSMutableArray array];
    _dataArray2=[NSMutableArray array];

    UIView *titleView=[[UIView alloc] initWithFrame:CGRectMake(0, 64, ScreenW, 40)];
    titleView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:titleView];
    
    _distanceBtn=[[MyBtn alloc] initWithTitle:@"距离" withBorderCornerType:YJCornerLeft withRect:CGRectMake(ScreenW/2-90, 7.5, 90, 25) withEnable:NO];
    _selectedBtn=_distanceBtn;
    [_distanceBtn addTarget:self action:@selector(titltBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [titleView addSubview:_distanceBtn];
    
    _priceBtn=[[MyBtn alloc] initWithTitle:@"价格" withBorderCornerType:YJCornerRight withRect:CGRectMake(ScreenW/2, 7.5, 90, 25) withEnable:YES];
    [_priceBtn addTarget:self action:@selector(titltBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [titleView addSubview:_priceBtn];
    
    // 不要自动调整inset
    self.automaticallyAdjustsScrollViewInsets = NO;
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0,64+40, ScreenW, ScreenH-64-40-49)];
    _scrollView.delegate = self;
    _scrollView.pagingEnabled = YES;
    _scrollView.showsHorizontalScrollIndicator=NO;
    _scrollView.contentSize = CGSizeMake(ScreenW*2, 0);
    [self.view addSubview:_scrollView];
    
    __weak typeof(self) weakSelf = self;
    _tv1=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, ScreenW,_scrollView.height) style:UITableViewStylePlain];
    _tv1.dataSource=self;
    _tv1.delegate=self;
    _tv1.separatorStyle=UITableViewCellSeparatorStyleNone;
    [_scrollView addSubview:_tv1];
//    _tv1.mj_header=[MJRefreshHeader headerWithRefreshingBlock:^{
//        _curPage1=1;
//        [weakSelf loadData1];
//    }];
//    _tv1.mj_footer=[MJRefreshAutoFooter footerWithRefreshingBlock:^{
//        _curPage1++;
//        [weakSelf loadData1];
//    }];
    
    _tv2=[[UITableView alloc] initWithFrame:CGRectMake(ScreenW,0,ScreenW,_scrollView.height) style:UITableViewStylePlain];
    _tv2.dataSource=self;
    _tv2.delegate=self;
    _tv2.separatorStyle=UITableViewCellSeparatorStyleNone;
    [_scrollView addSubview:_tv2];
//    _tv2.mj_header=[MJRefreshHeader headerWithRefreshingBlock:^{
//        _curPage2=1;
////        [weakSelf loadData2];
//    }];
//    _tv2.mj_footer=[MJRefreshAutoFooter footerWithRefreshingBlock:^{
//        _curPage2++;
////        [weakSelf loadData2];
//    }];
    
    // 注册
    [_tv1 registerNib:[UINib nibWithNibName:NSStringFromClass([CoachCell class]) bundle:nil] forCellReuseIdentifier:@"cell"];
    [_tv2 registerNib:[UINib nibWithNibName:NSStringFromClass([CoachCell class]) bundle:nil] forCellReuseIdentifier:@"cell"];
}

-(void)loadData1{
    NSString *Url=[NSString stringWithFormat:GetCoachListUrl,1];
    [YJHttpRequest get:Url params:nil success:^(id json) {
        
        YJLog(@"%@",json);
        NSArray *arr=json[@"data"];
        for (NSDictionary *dic in arr) {
            CoachModel *coach=[[CoachModel alloc] initWithDict:dic];
            [_dataArray1 addObject:coach];
        }
        [_tv1 reloadData];
        
    } failure:^(NSError *error) {
        YJLog(@"%@",error);
    }];
}

-(void)titltBtnClicked:(UIButton *)sender{
   
    if (sender.enabled==NO) {
        return;
    }
    sender.enabled=NO;
    _selectedBtn.enabled=YES;
    _selectedBtn=sender;
    
    CGPoint offset = _scrollView.contentOffset;
    if (sender==_distanceBtn) {
        offset.x = 0;
    }else{
        offset.x=ScreenW;
    }
    [_scrollView setContentOffset:offset animated:YES];
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CoachCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 130;
}

#pragma mark - <UIScrollViewDelegate>
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    if (!(scrollView==_scrollView)) {
        return;
    }
    NSInteger index = scrollView.contentOffset.x / scrollView.width;
    if (index==0) {
        [self titltBtnClicked:_distanceBtn];
    }else if(index==1){
        [self titltBtnClicked:_priceBtn];
    }
}
@end
