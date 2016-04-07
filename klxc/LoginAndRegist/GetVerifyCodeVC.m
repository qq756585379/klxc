//
//  GetVerifyCodeVC.m
//  klxc
//
//  Created by sctto on 16/4/6.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "GetVerifyCodeVC.h"
#import "AgreementVC.h"
#import "RegistVC.h"

@interface GetVerifyCodeVC ()

@property (weak, nonatomic) IBOutlet UITextField *TelTF;
@property (weak, nonatomic) IBOutlet UIButton *getCodeBtn;

@end

@implementation GetVerifyCodeVC

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.getCodeBtn.enabled=NO;
    _TelTF.text=@"13376275127";
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden=NO;
}

#pragma mark - 获取验证码
- (IBAction)getCodeBtnClicked:(UIButton *)sender {
    [YJHttpRequest get:[NSString stringWithFormat:GetRegVerifyCode,_TelTF.text] params:nil success:^(id json) {
        if ([json[@"code"] isEqualToNumber:@0]) {
            YJLog(@"%@",json);
            RegistVC *forgetVc=[sb instantiateViewControllerWithIdentifier:@"RegistVC"];
            
        }
    } failure:^(NSError *error) {
        YJLog(@"+++++%@",error);
    }];
}

- (IBAction)agreeBtnClicked:(UIButton *)sender {
    sender.selected=!sender.selected;
}

- (IBAction)agreementClicked:(UIButton *)sender {
    AgreementVC *agreeVc=[[AgreementVC alloc] init];
    [self.navigationController pushViewController:agreeVc animated:YES];
}

@end
