//
//  BaoMingVC.m
//  klxc
//
//  Created by sctto on 16/4/6.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "BaoMingVC.h"

@interface BaoMingVC ()

@property (nonatomic, weak) UIView *myView;

@end

@implementation BaoMingVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0, ScreenH-60, ScreenW, 60)];
    view.backgroundColor=[UIColor lightGrayColor];
    [YJWindow addSubview:view];
    self.myView=view;
    
    UIButton *btn=[[UIButton alloc] initWithFrame:CGRectMake(60, 10, ScreenW-120, 40)];
    btn.backgroundColor=HEXCOLOR(0x03c9a9);
    btn.layer.cornerRadius=20;
    btn.layer.masksToBounds=YES;
    [btn setTitle:@"提交" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(submitBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.myView addSubview:btn];
}

-(void)submitBtnClicked{
    UIViewController *vc=[sb instantiateViewControllerWithIdentifier:@"121"];
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.myView.hidden=NO;
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.myView.hidden=YES;
}
-(void)dealloc{
    [self.myView removeFromSuperview];
}
#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section==0) {
        return 1;
    }
    return 5;
}

- ( CGFloat )tableView:( UITableView *)tableView heightForHeaderInSection:( NSInteger )section{
    if (section==0) {
        return 0.1;
    }
    return 45;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.1;
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
//    
//    // Configure the cell...
//    
//    return cell;
//}



@end
