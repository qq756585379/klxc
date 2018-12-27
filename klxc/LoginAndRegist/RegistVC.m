//
//  RegistVC.m
//  快来学车
//
//  Created by sctto on 16/3/23.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "RegistVC.h"
#import "Account.h"
#import "AccountTool.h"
#import "AgreementVC.h"

@interface RegistVC ()
{
    NSString *_tid;
}
@property (weak, nonatomic) IBOutlet UITextField *TelTF;
@property (weak, nonatomic) IBOutlet UITextField *VerifyCodeTF;
@property (weak, nonatomic) IBOutlet UITextField *PwdTF;
@property (weak, nonatomic) IBOutlet UIView *buttomBgView;
@end

@implementation RegistVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = _titleStr;
    self.navigationController.navigationBar.hidden=NO;
    if (_ctrlType==YJFindPasswordCtrl) {
        self.buttomBgView.hidden=YES;
    }
    
    _TelTF.text=@"13376275127";
    _PwdTF.text=@"123123";
}

- (IBAction)doneBtnClicked:(UIButton *)sender {
    [YJHttpRequest get:[NSString stringWithFormat:VerifySMSCode,_tid,_VerifyCodeTF.text] params:nil success:^(id json) {
        
        YJLog(@"短信验证:%@",json);
      
        [YJHttpRequest get:nil params:nil success:^(id json) {
            
        } failure:^(NSError *error) {
            
        }];
        
    } failure:^(NSError *error) {
        
    }];

}

#pragma mark - 获取验证码
- (IBAction)timeBtnClicked:(UIButton *)sender {
    [YJHttpRequest get:[NSString stringWithFormat:GetRegVerifyCode,@"13376275127"] params:nil success:^(id json) {
        YJLog(@"%@",json);
        NSArray *data=json[@"data"];
        if (data!=nil) {
            _tid=[data[0] objectForKey:@"tid"];
        }
    } failure:^(NSError *error) {
        YJLog(@"+++++%@",error);
    }];

}

- (IBAction)watchBtnClicked:(UIButton *)sender {
    sender.selected=!sender.selected;
}

- (IBAction)agreeBtnClicked:(UIButton *)sender {
    sender.selected=!sender.selected;
}

- (IBAction)readAgreeMentBtnClicked:(UIButton *)sender {
    AgreementVC *agreeVc=[[AgreementVC alloc] init];
    [self.navigationController pushViewController:agreeVc animated:YES];
}

@end
