//
//  YJDropVC.m
//  klxc
//
//  Created by sctto on 16/3/28.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "YJDropVC.h"

@interface YJDropVC ()

@end

@implementation YJDropVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.tableFooterView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenW, 0.01)];
    self.tableView.scrollEnabled=NO;
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text=@"11";
    return cell;
}




@end
