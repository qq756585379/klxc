//
//  AboutUsVC.m
//  klxc
//
//  Created by sctto on 16/4/1.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "AboutUsVC.h"

@interface AboutUsVC ()

@end

@implementation AboutUsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"关于我们";
//    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init]forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
//    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
    
    UIImageView *iv=[[UIImageView alloc] initWithFrame:CGRectMake(0,64, ScreenW, ScreenH-64)];
    iv.image=[UIImage imageNamed:@"klxc"];
    [self.view addSubview:iv];
} 



@end
