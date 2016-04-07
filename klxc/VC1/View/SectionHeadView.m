//
//  SectionHeadView.m
//  klxc
//
//  Created by sctto on 16/4/5.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "SectionHeadView.h"

@implementation SectionHeadView

+ (instancetype)SectionHeader{
    //    return [[[NSBundle mainBundle] loadNibNamed:@"LodMoreFooter" owner:nil options:nil] lastObject];
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        [self createSubViews];
    }
    return self;
}

-(void)createSubViews{
    
}

//
///**
// *  当控件不是从xib、storyboard中创建时，就会调用这个方法
// */
//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        [self setup];
//    }
//    return self;
//}
//
///**
// *  当控件是从xib、storyboard中创建时，就会调用这个方法
// */
//- (id)initWithCoder:(NSCoder *)decoder
//{
//    if (self = [super initWithCoder:decoder]) {
//        [self setup];
//    }
//    return self;
//}
//
///**
// *  这个方法在initWithCoder:方法后调用
// */
//- (void)awakeFromNib{
//    
//}

@end
