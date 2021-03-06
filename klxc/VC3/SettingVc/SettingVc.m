//
//  SettingVc.m
//  klxc
//
//  Created by sctto on 16/3/31.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "SettingVc.h"
#import "AboutUsVC.h"

@interface SettingVc ()

@property (weak, nonatomic) IBOutlet UIButton *closeBtn;

@end

@implementation SettingVc

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    [self.closeBtn.layer setBorderColor:UIColorFromRGBA(0xb6b5b5, 1.0).CGColor];
    [self.closeBtn.layer setBorderWidth:1];
    [self.closeBtn.layer setMasksToBounds:YES];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden=NO;
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row==1) {
        [self.navigationController pushViewController:[[AboutUsVC alloc]init]animated:YES];
    }
}

@end
