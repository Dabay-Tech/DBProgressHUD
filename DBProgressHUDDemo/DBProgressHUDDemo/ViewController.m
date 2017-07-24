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
    
    
//    self.view.backgroundColor = [UIColor lightGrayColor];
//    [DBProgressHUD db_showLoading:@"  加载中...   " toView:self.view];
    
//    [DBProgressHUD db_showError:@"服务暂不可用，请稍后重试"];
    [DBProgressHUD db_showSuccess:@"添加参保人成功"];
    
//    [DBProgressHUD db_showError:@"服务暂不可用，请稍后重试"];
    

//    [DBProgressHUD db_showLoading:@"  加载中...   " toView:nil];
    
//    [DBProgressHUD db_showMessage:@"Dabay-Tech"];
    

    
    
//    [DBProgressHUD db_showMultiLineMessage:@"服务暂不可用，请稍后\n重试。服务暂不可用，请稍后重试" toView:nil];
    
//    [DBProgressHUD db_showSuccess:@"大白科技-DBProgressHUD" toView:nil];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [DBProgressHUD db_hideHUDAnimated:NO];
    });
    
    
    

    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        
//        [hhud db_dismissMessage];
//    });
    
    
    
    
    
    
//    DBProgressHUD *hud=[DBProgressHUD showHUDAddedTo:self.view animated:YES];
//    hud.mode=MBProgressHUDModeDeterminateHorizontalBar;
//    hud.progress=0.5;
//    hud.detailsLabel.textColor=[UIColor greenColor];
//    hud.detailsLabel.text=@"加载中...";
//    hud.label.text=@"123";
//    hud.label.textColor=[UIColor redColor];
    
    
//    [DBProgressHUD db_showMultiLineMessage: @"正在加载中.......................................----------------"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
