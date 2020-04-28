//
//  YJTabBarVC.m
//  快来学车
//
//  Created by sctto on 16/3/23.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "YJTabBarVC.h"
#import "YJNav.h"
#import "MainViewController.h"
#import "CoachVC.h"
#import "MineViewController.h"

@implementation YJTabBarVC

+ (void)initialize{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = RGBCOLOR(123, 123, 123);
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
//    selectedAttrs[NSForegroundColorAttributeName] = RGBCOLOR(34, 200, 169);
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor redColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    MainViewController *mainVc=[[MainViewController alloc] init];
    CoachVC *coach=[[CoachVC alloc] init];

    MineViewController *mine = [sb instantiateViewControllerWithIdentifier:@"MineViewController"];
    
    [self setupChildVc:mainVc title:@"首页" image:@"index" selectedImage:@"index_on"];
    [self setupChildVc:coach title:@"教练" image:@"teacher" selectedImage:@"teacher_on"];
    [self setupChildVc:mine title:@"我" image:@"me" selectedImage:@"me_on"];
    
//    self.tabBar.barStyle=UIImageRenderingModeAlwaysOriginal;
//    self.tabBar.barTintColor=[UIColor colorWithRed:246/255.0 green:246/255.0 blue:246/255.0 alpha:1];
//    self.tabBarController.tabBar.tintColor=RGBCOLOR(34, 200, 169);
//    self.tabBar.tintColor=RGBCOLOR(34, 200, 169);
}

- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage{
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    
    if (iOS7) {
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    } else {
        vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    }
    
    YJNav *nav = [[YJNav alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
}

@end
