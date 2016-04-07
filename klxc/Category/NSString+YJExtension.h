//
//  NSString+YJExtension.h
//  klxc
//
//  Created by sctto on 16/3/25.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (YJExtension)

-(NSString *)yj_stringByAddingPercentEscapesUsingEncoding;
-(NSString *)yj_stringByReplacingPercentEscapesUsingEncoding;

@end
