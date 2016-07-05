//
//  ViewController.m
//  App的中间Present一个页面
//
//  Created by 赵赤赤 on 16/7/5.
//  Copyright © 2016年 mhz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    
    self.title = [NSString stringWithFormat:@"第%zd页", self.navigationController.tabBarItem.tag];
}

@end
