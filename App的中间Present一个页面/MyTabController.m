//
//  MyTabController.m
//  App的中间Present一个页面
//
//  Created by 赵赤赤 on 16/7/5.
//  Copyright © 2016年 mhz. All rights reserved.
//

#import "MyTabController.h"
#import "ViewController.h"
#import "PresentViewControlller.h"

@interface MyTabController () <UITabBarControllerDelegate>

@end

@implementation MyTabController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     所有controller都要绑定tag值，这样就可以在点击的时候，区分点击了哪个controller了
     */
    ViewController *vc1 = [[ViewController alloc] init];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:vc1];
    nav1.tabBarItem.tag = 1;
    nav1.tabBarItem.title = @"第1页";
    
    ViewController *vc2 = [[ViewController alloc] init];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    nav2.tabBarItem.tag = 2;
    nav2.tabBarItem.title = @"第2页";
    
    ViewController *vc3 = [[ViewController alloc] init];
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:vc3];
    nav3.tabBarItem.tag = 3;
    // 设置tabbar上显示的图片
    nav3.tabBarItem.image = [[UIImage imageNamed:@"tab_photo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 因为tabbar上不显示文字，所以这里要让图片上下居中，使用如下方法进行调整
    nav3.tabBarItem.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0);
    
    ViewController *vc4 = [[ViewController alloc] init];
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:vc4];
    nav4.tabBarItem.tag = 4;
    nav4.tabBarItem.title = @"第4页";
    
    ViewController *vc5 = [[ViewController alloc] init];
    UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:vc5];
    nav5.tabBarItem.tag = 5;
    nav5.tabBarItem.title = @"第5页";
    
    NSArray *arr = @[nav1, nav2, nav3, nav4, nav5];
    self.viewControllers = arr;
    
    self.delegate = self;
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    // 如果点击了中间的controller
    if (viewController.tabBarItem.tag == 3) {
        // 弹出一个controller
        PresentViewControlller *presentVC = [[PresentViewControlller alloc] init];
        [self presentViewController:presentVC animated:YES completion:nil];
        // 不允许选择这个页面页面
        return NO;
    } else {
        return YES;
    }
}

@end
