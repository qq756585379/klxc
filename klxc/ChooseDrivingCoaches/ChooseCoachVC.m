//
//  ChooseCoachVC.m
//  klxc
//
//  Created by sctto on 16/3/28.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "ChooseCoachVC.h"
#import "YJDropVC.h"
#import "YJDropView.h"
#import "DrivingCoachesCell.h"

@implementation ChooseCoachVC

static NSString *const CellId = @"DrivingCoachesCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden=NO;
    self.navigationItem.title=@"选择教练";
    
    self.tableView.rowHeight = 110;
    self.tableView.sectionHeaderHeight = 44;
    
    // 注册
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([DrivingCoachesCell class]) bundle:nil] forCellReuseIdentifier:CellId];
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DrivingCoachesCell *cell = [tableView dequeueReusableCellWithIdentifier:CellId forIndexPath:indexPath];
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIButton *headBtn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, ScreenW, 40)];
    [headBtn addTarget:self action:@selector(headBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    headBtn.backgroundColor=[UIColor redColor];
    return headBtn;
}

-(void)headBtnClicked:(UIButton *)btn{
    YJDropView *dropView=[YJDropView menu];
    YJDropVC *dropVC=[[YJDropVC alloc] init];
    dropVC.view.height=150;
    dropVC.view.width=ScreenW;
    dropView.contentController=dropVC;
    [dropView showFrom:btn];
}

@end
