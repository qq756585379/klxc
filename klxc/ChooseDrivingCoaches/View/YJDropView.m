//
//  YJDropView.m
//  klxc
//
//  Created by sctto on 16/3/28.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "YJDropView.h"

@interface YJDropView()
@property (nonatomic, strong) UIView *contentView;
@end

@implementation YJDropView

+ (instancetype)menu
{
    return [[self alloc] init];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 清除颜色
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

-(void)setContentController:(UITableViewController *)contentController{
    _contentController = contentController;
    //self.contentView会调用下面的set方法
    self.contentView=contentController.view;
}

-(void)setContentView:(UIView *)contentView{
    _contentView = contentView;
    contentView.backgroundColor=RGBACOLOR(1.0, 1.0, 1.0, 0.5);
    contentView.x=0;
    contentView.y=108;
    [self addSubview:contentView];
}

/**
 *  显示
 */
- (void)showFrom:(UIView *)fromView
{
    UIWindow *window = [[UIApplication sharedApplication].windows lastObject];
    [window addSubview:self];
    self.frame = window.bounds;
}

/**
 *  销毁
 */
- (void)dismiss
{
    [self removeFromSuperview];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self dismiss];
}

@end
