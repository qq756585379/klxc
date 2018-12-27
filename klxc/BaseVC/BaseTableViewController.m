//
//  BaseTableViewController.m
//  klxc
//
//  Created by sctto on 16/4/7.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "BaseTableViewController.h"

@implementation BaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=YJGlobalBg;
    self.navigationController.navigationBar.barTintColor=HEXCOLOR(0x03c9a9);
    self.navigationController.navigationBar.tintColor=[UIColor whiteColor];
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName]];
}

@end
