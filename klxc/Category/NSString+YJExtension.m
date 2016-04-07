//
//  NSString+YJExtension.m
//  klxc
//
//  Created by sctto on 16/3/25.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "NSString+YJExtension.h"

@implementation NSString (YJExtension)

-(NSString *)yj_stringByAddingPercentEscapesUsingEncoding{
    return [self stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
}

-(NSString *)yj_stringByReplacingPercentEscapesUsingEncoding{
    return [self stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}

@end
