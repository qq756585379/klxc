//
//  UIWindow+YJExtension.m
//  YJWeibo-oc
//
//  Created by sctto on 16/3/23.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "UIWindow+YJExtension.h"
#import "YJTabBarVC.h"
#import "NewFeatureVC.h"

@implementation UIWindow (YJExtension)

- (void)switchRootViewController{
    
    NSString *key = @"CFBundleVersion";
    
    NSString *lastVersion = [USER_DEFAULT objectForKey:key];
    // 当前软件的版本号（从Info.plist中获得）
    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[key];
    
    if ([currentVersion isEqualToString:lastVersion]) {
        // 版本号相同：这次打开和上次打开的是同一个版本
        self.rootViewController = [[YJTabBarVC alloc] init];
        
    } else {
        // 这次打开的版本和上一次不一样，显示新特性
        self.rootViewController = [[NewFeatureVC alloc] init];
        // 将当前的版本号存进沙盒
        [USER_DEFAULT setObject:currentVersion forKey:key];
        [USER_DEFAULT synchronize];
    }
}

@end
