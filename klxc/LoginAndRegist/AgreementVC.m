//
//  AgreementVC.m
//  klxc
//
//  Created by sctto on 16/4/1.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "AgreementVC.h"

@interface AgreementVC ()

@end

@implementation AgreementVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"学员协议";
    
    UIScrollView *scroll=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, ScreenW, ScreenH)];
    [self.view addSubview:scroll];
    
    UIImageView *iv=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, ScreenW, ScreenW*2345/750)];
    iv.image=[UIImage imageNamed:@"学员协议"];
    [scroll addSubview:iv];
    
    scroll.contentSize = CGSizeMake(0, ScreenW*2345/750);
    scroll.bounces = YES;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden=NO;
}


@end
