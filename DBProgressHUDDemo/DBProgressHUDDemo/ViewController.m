//
//  ViewController.m
//  DBProgressHUDDemo
//
//  Created by Dabay on 2017/6/16.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import "ViewController.h"
#import "DBProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    [DBProgressHUD db_showLoading:@"加载中..." toView:self.view];
    
    
    
    DBProgressHUD *hud=[DBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode=MBProgressHUDModeDeterminateHorizontalBar;
    hud.progress=0.5;
    hud.detailsLabel.textColor=[UIColor greenColor];
    hud.detailsLabel.text=@"加载中...";
    hud.label.text=@"123";
    hud.label.textColor=[UIColor redColor];
    
    
//    [DBProgressHUD db_showMultiLineMessage: @"正在加载中.......................................----------------"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
