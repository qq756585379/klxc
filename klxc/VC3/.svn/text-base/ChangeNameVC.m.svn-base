//
//  ChangeNameVC.m
//  klxc
//
//  Created by sctto on 16/4/1.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "ChangeNameVC.h"

@interface ChangeNameVC ()
{
    UITextField *_nameTextField;
}
@end

@implementation ChangeNameVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"昵称";
    
    self.view.backgroundColor=HEXCOLOR(0xebebeb);
    
    UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0, 84, ScreenW, 45)];
    view.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:view];
    
    _nameTextField=[[UITextField alloc] initWithFrame:CGRectMake(24, 12, ScreenW-48, 21)];
    _nameTextField.placeholder=@"我不知道";
    _nameTextField.clearButtonMode=UITextFieldViewModeAlways;
    [view addSubview:_nameTextField];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStylePlain target:self action:@selector(cancel)];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"保存" style:UIBarButtonItemStylePlain target:self action:@selector(save)];
    
    [[UITextField appearance] setTintColor:[UIColor lightGrayColor]];
}

-(void)cancel{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)save{
    
}

@end
