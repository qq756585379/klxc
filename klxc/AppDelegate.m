//
//  AppDelegate.m
//  klxc
//
//  Created by sctto on 16/3/24.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import "AppDelegate.h"
#import "UIWindow+YJExtension.h"

@interface AppDelegate ()

@end

/**
 [UIColor colorWithPatternImage:[UIImage imageNamed:@"tabbg"]];
 [self.navigationController.navigationBar setBackgroundImage:nil forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
 [self.navigationController.navigationBar setShadowImage:nil];
 */

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = YJGlobalBg;
    
    [self.window switchRootViewController];

    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}

@end
