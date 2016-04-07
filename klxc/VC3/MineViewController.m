//
//  MineViewController.m
//  klxc
//
//  Created by sctto on 16/3/28.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "MineViewController.h"
#import "LoginVC.h"
#import "YJNav.h"
#import "AccountTool.h"
#import "Account.h"
#import "AgreementVC.h"
#import "SingleInfoVC.h"

@interface MineViewController ()

@property (weak, nonatomic) IBOutlet UIButton *iconBtn;

@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets=NO;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden=YES;
}

- (IBAction)iconBtnClicked:(UIButton *)sender {
    
//    UIStoryboard *sb=[UIStoryboard storyboardWithName:@"YJ_Storyboard" bundle:nil];
    //判断沙盒有没有Account
    Account *account=[AccountTool account];
    if (account) {
        SingleInfoVC *infoVc=[sb instantiateViewControllerWithIdentifier:@"SingleInfoVC"];
        [self.navigationController pushViewController:infoVc animated:YES];
    }else{
        YJNav *loginNav=[sb instantiateViewControllerWithIdentifier:@"YJNav"];
        [self presentViewController:loginNav animated:YES completion:nil];
    }
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.01;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row==5) {
        [self.navigationController pushViewController:[[AgreementVC alloc] init] animated:YES];
    }
}


@end
