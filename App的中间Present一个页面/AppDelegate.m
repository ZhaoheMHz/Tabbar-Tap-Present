//
//  AppDelegate.m
//  App的中间Present一个页面
//
//  Created by 赵赤赤 on 16/7/5.
//  Copyright © 2016年 mhz. All rights reserved.
//

#import "AppDelegate.h"
#import "MyTabController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[MyTabController alloc] init];
    
    return YES;
}

@end
