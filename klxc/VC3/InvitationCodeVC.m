//
//  InvitationCodeVC.m
//  klxc
//
//  Created by sctto on 16/4/1.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "InvitationCodeVC.h"

@interface InvitationCodeVC ()
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topDistance;
@end

@implementation InvitationCodeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden=NO;
}

- (IBAction)bigBtnClicked:(UIButton *)sender {
    self.topDistance.constant+=150;
    self.topView.hidden=NO;
}

@end
