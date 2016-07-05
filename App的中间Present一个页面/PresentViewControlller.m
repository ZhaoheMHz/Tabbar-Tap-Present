//
//  PresentViewControlller.m
//  App的中间Present一个页面
//
//  Created by 赵赤赤 on 16/7/5.
//  Copyright © 2016年 mhz. All rights reserved.
//

#import "PresentViewControlller.h"

@implementation PresentViewControlller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    [button setTitle:@"返回" forState:UIControlStateNormal];
    button.center = self.view.center;
    [self.view addSubview:button];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonAction {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
