//
//  UIBarButtonItem+YJExtension.m
//  百思姐
//
//  Created by sctto on 16/3/23.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "UIBarButtonItem+YJExtension.h"

@implementation UIBarButtonItem (YJExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}

@end
