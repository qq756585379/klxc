//
//  MainViewController.m
//  klxc
//
//  Created by sctto on 16/3/28.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "MainViewController.h"
#import "DrivingCoachesCell.h"
#import "YJButton.h"
#import "AdvertisementView.h"
#import "SectionHeadView.h"
#import "CoachCell.h"
#import "CoachModel.h"
#import "CoachDetailVC.h"
#import "MJRefresh.h"

@interface MainViewController ()
{
    NSMutableArray *_dataArr;
    int             _curPage;//标识网络请求第几页
    BOOL            _isLoadMore;
}
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _dataArr=[NSMutableArray array];
    _isLoadMore=NO;
    self.navigationItem.title=@"快来学车";
    
    YJButton *btn=[[YJButton alloc] init];
    [btn setTitle:@"上海" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(leftBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:btn];
    
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"ring"] style:UIBarButtonItemStylePlain target:self action:@selector(rightBtnClicked:)];
    
    AdvertisementView *headView=[[AdvertisementView alloc] initWithFrame:CGRectMake(0, 0, ScreenW, 200)];
    self.tableView.tableHeaderView=headView;
    
    // 注册
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([CoachCell class]) bundle:nil] forCellReuseIdentifier:@"cell"];
    self.tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    
    __weak typeof(self) weakSelf = self;
    self.tableView.mj_header=[MJRefreshHeader headerWithRefreshingBlock:^{
        _curPage=1;
        [weakSelf loadData];
    }];
    
    self.tableView.mj_footer=[MJRefreshAutoFooter footerWithRefreshingBlock:^{
        _curPage++;
        [weakSelf loadData];
    }];
    [self.tableView.mj_header beginRefreshing];
}

-(void)loadData{
    __weak typeof(self) weakSelf = self;
    _isLoadMore=YES;
    NSString *Url=[NSString stringWithFormat:GetCoachListUrl,_curPage];
    [YJHttpRequest get:Url params:nil success:^(id json) {
        YJLog(@"%@",json);
        _isLoadMore=NO;
        NSArray *arr=json[@"data"];
        if (arr.count) {
            [_dataArr removeAllObjects];
        }else{
            _curPage--;
        }
        for (NSDictionary *dic in arr) {
            CoachModel *coach=[[CoachModel alloc] initWithDict:dic];
            [_dataArr addObject:coach];
        }
        [weakSelf.tableView reloadData];
        
    } failure:^(NSError *error) {
        _isLoadMore=NO;
    }];
    [self.tableView.mj_header endRefreshing];
    [self.tableView.mj_footer endRefreshing];
}

#pragma mark - 导航左键
-(void)leftBtnClick:(UIButton *)sender{
    sender.selected=!sender.selected;
}

#pragma mark - 导航右键
-(void)rightBtnClicked:(UIBarButtonItem *)rightBarItem{
    YJLogFunc;
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  
    CoachCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    if (indexPath.row==0) {
        UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenW, 45)];
        view.tag=989;
        [cell.contentView addSubview:view];
        
        UIImageView *iv=[[UIImageView alloc] initWithFrame:CGRectMake(15,10, 5, 25)];
        iv.image=[UIImage imageNamed:@"line"];
        [view addSubview:iv];
        UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(30,12, 100, 20)];
        label.text=@"明星教练";
        [view addSubview:label];
    }else{
        UIView *iv=[cell viewWithTag:989];
        if (iv) {
            [iv removeFromSuperview];
        }
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row==0) {
        return 170;
    }
    return 130;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    SectionHeadView *headView=[SectionHeadView viewFromXib];
//    SectionHeadView *headView=[SectionHeadView SectionHeader];
    return headView;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 100;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CoachDetailVC *detail=[sb instantiateViewControllerWithIdentifier:@"CoachDetailVC"];
    detail.model=_dataArr[indexPath.row];
    [self.navigationController pushViewController:detail animated:YES];
}

@end
