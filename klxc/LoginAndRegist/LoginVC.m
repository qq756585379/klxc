//
//  LoginVC.m
//  快来学车
//
//  Created by sctto on 16/3/23.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "LoginVC.h"
#import "RegistVC.h"
#import "Account.h"
#import "AccountTool.h"

@interface LoginVC ()

@property (weak, nonatomic) IBOutlet UITextField *TelTF;
@property (weak, nonatomic) IBOutlet UITextField *PwdTF;

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden=YES;
}

- (IBAction)dismissBtnClicked:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)forgetPwdBtnClicked {
    
    RegistVC *forgetVc=[sb instantiateViewControllerWithIdentifier:@"RegistVC"];
    forgetVc.titleStr=@"找回密码";
    forgetVc.ctrlType=YJFindPasswordCtrl;
    [self.navigationController pushViewController:forgetVc animated:YES];
}

#pragma mark - 登录
- (IBAction)LoginBtnClicked:(UIButton *)sender {
    
    [YJHttpRequest get:[NSString stringWithFormat:LOGINURL,@"1321111111",@"123456"] params:nil success:^(id json)
        {
            
        if ([json[@"code"] isEqualToNumber:@0]) {//登录成功
            YJLog(@"%@",json);
            Account *account=[Account mj_objectWithKeyValues:json[@"data"]];
            [AccountTool saveAccount:account];
            [self dismissViewControllerAnimated:YES completion:nil];
        }else{
            NSString *msg=[json[@"msg"] yj_stringByReplacingPercentEscapesUsingEncoding];
            [MBProgressHUD showError:msg];
        }
    } failure:^(NSError *error) {
        YJLog(@"+++++%@",error);
    }];
}


@end
