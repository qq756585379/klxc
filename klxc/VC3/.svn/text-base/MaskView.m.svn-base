//
//  MaskView.m
//  klxc
//
//  Created by sctto on 16/4/1.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "MaskView.h"

@interface MaskView ()

@property (nonatomic, weak) UIButton *btn1;
@property (nonatomic, weak) UIButton *btn2;

@end

@implementation MaskView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        self.backgroundColor=[UIColor blackColor];
        self.alpha=0;
        UIButton *btn1=[[UIButton alloc] initWithFrame:CGRectMake(ScreenW+90, ScreenH/2-50, 90, 90)];
        btn1.backgroundColor=[UIColor cyanColor];
        btn1.layer.cornerRadius = 45;
        btn1.clipsToBounds = YES;
        [btn1 setTitle:@"相册" forState:UIControlStateNormal];
        btn1.titleLabel.textColor=[UIColor whiteColor];
        [self addSubview:btn1];
        [btn1 addTarget:self action:@selector(xiangce) forControlEvents:UIControlEventTouchUpInside];
        self.btn1=btn1;
        
        UIButton *btn2=[[UIButton alloc] initWithFrame:CGRectMake(-90, ScreenH/2+50, 90, 90)];
        btn2.backgroundColor=[UIColor cyanColor];
        btn2.layer.cornerRadius = 45;
        btn2.clipsToBounds = YES;
        [btn2 setTitle:@"拍照" forState:UIControlStateNormal];
        btn2.titleLabel.textColor=[UIColor whiteColor];
        [self addSubview:btn2];
        [btn2 addTarget:self action:@selector(paizhao) forControlEvents:UIControlEventTouchUpInside];
        self.btn2=btn2;
    }
    return self;
}

-(void)xiangce{
    if ([self.delegate respondsToSelector:@selector(pickPhotoBtnClickedWithType:)]) {
        [self.delegate pickPhotoBtnClickedWithType:albumType];
    }
}

-(void)paizhao{
    if ([self.delegate respondsToSelector:@selector(pickPhotoBtnClickedWithType:)]) {
        [self.delegate pickPhotoBtnClickedWithType:takePhotoType];
    }
}

-(void)show{
    CABasicAnimation *imageAnimation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    imageAnimation.fromValue = [NSNumber numberWithFloat:0];
    imageAnimation.toValue = [NSNumber numberWithFloat:0.7];
    imageAnimation.duration = 0.2;
    [self.layer addAnimation:imageAnimation forKey:@"opacity"];
    
    CAKeyframeAnimation *btnAnimation1 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    btnAnimation1.duration = 0.2;
    CGPoint center = self.btn1.center;
    CGFloat x = center.x;
    CGFloat y = center.y;
    NSValue *aValue = [NSValue valueWithCGPoint:CGPointMake(x, y)];
    NSValue *bValue = [NSValue valueWithCGPoint:CGPointMake(ScreenW/2, ScreenH/2-50)];
    btnAnimation1.values = @[aValue,bValue];
    [self.btn1.layer addAnimation:btnAnimation1 forKey:@"position"];
    
    CAKeyframeAnimation *btnAnimation2 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    btnAnimation2.duration = 0.2;
    CGPoint center2 = self.btn2.center;
    CGFloat x2 = center2.x;
    CGFloat y2 = center2.y;
    NSValue *aValue2 = [NSValue valueWithCGPoint:CGPointMake(x2, y2)];
    NSValue *bValue2 = [NSValue valueWithCGPoint:CGPointMake(ScreenW/2, ScreenH/2+50)];
    btnAnimation2.values = @[aValue2,bValue2];
    [self.btn2.layer addAnimation:btnAnimation2 forKey:@"position"];
    
    self.alpha=0.7;
    self.btn1.center=CGPointMake(ScreenW/2, ScreenH/2-50);
    self.btn2.center=CGPointMake(ScreenW/2, ScreenH/2+50);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self removeFromSuperview];
}
@end
