//
//  AccountTool.m
//  klxc
//
//  Created by sctto on 16/3/30.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "AccountTool.h"
#import "Account.h"

@implementation AccountTool

+ (void)saveAccount:(Account *)account{
    [NSKeyedArchiver archiveRootObject:account toFile:AccountPath];
}

+ (Account *)account{
    return [NSKeyedUnarchiver unarchiveObjectWithFile:AccountPath];
}

@end
