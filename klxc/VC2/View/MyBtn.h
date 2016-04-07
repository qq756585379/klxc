//
//  MyBtn.h
//  klxc
//
//  Created by sctto on 16/4/5.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    
    YJCornerLeft,
    YJCornerRight,
    
} YJBorderCornerType;

@interface MyBtn : UIButton

- (instancetype)initWithTitle:(NSString *)title withBorderCornerType:(YJBorderCornerType)borderType withRect:(CGRect)frame withEnable:(BOOL)enable;

@end
