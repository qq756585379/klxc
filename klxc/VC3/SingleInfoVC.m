//
//  SingleInfoVC.m
//  klxc
//
//  Created by sctto on 16/4/1.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "SingleInfoVC.h"
#import "ChangeNameVC.h"
#import "MaskView.h"

@interface SingleInfoVC ()<MaskViewDelegate>
@property (weak, nonatomic) IBOutlet UIView      *bgView;
@property (weak, nonatomic) IBOutlet UIImageView *iconIV;
@property (weak, nonatomic) IBOutlet UILabel     *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel     *telLabel;
@property (nonatomic, weak) MaskView *maskView;;
@end

@implementation SingleInfoVC

-(void)pickPhotoBtnClickedWithType:(YJCustomType)type{
    if (type==albumType) {
        YJLog(@"相册");
    }else if (type==takePhotoType){
        YJLog(@"拍照");
    }
    [self.maskView removeFromSuperview];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"个人资料";
//    v.layer.masksToBounds=YES;//这行去掉
    self.bgView.layer.cornerRadius=5;
    self.bgView.layer.shadowColor=[UIColor lightGrayColor].CGColor;
    self.bgView.layer.shadowOffset=CGSizeMake(10, 10);
    self.bgView.layer.shadowOpacity=0.5;
    self.bgView.layer.shadowRadius=5;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden=NO;
}

- (IBAction)iconBtnClicked:(UIButton *)sender {
    MaskView *maskView=[[MaskView alloc] initWithFrame:CGRectMake(0, 0, ScreenW, ScreenH)];
    [YJWindow addSubview:maskView];
    self.maskView=maskView;
    maskView.delegate=self;
    [maskView show];
}

- (IBAction)nameBtnClicked:(UIButton *)sender {
    [self.navigationController pushViewController:[[ChangeNameVC alloc] init] animated:YES];
}

@end
