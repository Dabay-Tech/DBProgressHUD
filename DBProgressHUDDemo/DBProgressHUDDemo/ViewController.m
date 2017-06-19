//
//  ViewController.m
//  DBProgressHUDDemo
//
//  Created by Dabay on 2017/6/16.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUD+Dabay.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [MBProgressHUD showLoading:@"努力加载中..." toView:self.view];
    
    
//    [MBProgressHUD db_showMultiLineMessage: @"正在加载中.......................................----------------"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
