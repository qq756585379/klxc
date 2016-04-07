//
//  MyBtn.m
//  klxc
//
//  Created by sctto on 16/4/5.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "MyBtn.h"
#import "UIButton+Extension.h"

@interface MyBtn ()

@end

@implementation MyBtn

- (instancetype)initWithTitle:(NSString *)title withBorderCornerType:(YJBorderCornerType)borderType withRect:(CGRect)frame withEnable:(BOOL)enable{
    self = [self initWithFrame:frame];
    if (self) {
        
        [self setTitle:title forState:UIControlStateNormal];
        
        UIBezierPath *maskPath=nil;
        
        UIColor *borderColor=[UIColor clearColor];
        if (borderType==YJCornerLeft) {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerTopLeft cornerRadii:CGSizeMake(2, 2)];
            borderColor=UIColorFromRGBA(0x03c9a9, 1.0);
        }else{
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerBottomRight| UIRectCornerTopRight cornerRadii:CGSizeMake(2, 2)];
            borderColor=[UIColor lightGrayColor];
        }
        
        CAShapeLayer *maskLayer = [CAShapeLayer layer];
        maskLayer.frame=self.bounds;
        maskLayer.path=maskPath.CGPath;
        self.layer.mask=maskLayer;
        
        CAShapeLayer *borderLayer=[CAShapeLayer layer];
        borderLayer.path=maskPath.CGPath;
        borderLayer.fillColor=[UIColor clearColor].CGColor;
        borderLayer.strokeColor=[UIColor lightGrayColor].CGColor;
        borderLayer.lineWidth = 1;
        borderLayer.frame=self.bounds;
        [self.layer addSublayer:borderLayer];
        
        [self setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateDisabled];
        self.titleLabel.font = [UIFont systemFontOfSize:13];
        
        //这个是用分类添加的方法
        [self setBackgroundColor:UIColorFromRGBA(0xfffefa, 1.0) forState:UIControlStateNormal];
        [self setBackgroundColor:UIColorFromRGBA(0x03c9a9, 1.0) forState:UIControlStateDisabled];
        
        self.enabled=enable;
    }
    return self;
}

-(void)setHighlighted:(BOOL)highlighted{}

@end
