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
    
//    [DBProgressHUD db_showSuccess:@"添加参保人成功"];
    
//    [DBProgressHUD db_showError:@"服务暂不可用，请稍后重试"];
    
//    [DBProgressHUD db_showLoading:@"  加载中...   " toView:nil];
    
//    [DBProgressHUD db_showMessage:@"Dabay-Tech"];
    
//    [DBProgressHUD db_showMultiLineMessage:@"服务暂不可用，请稍后\n重试。服务暂不可用，请稍后重试" toView:nil];
    
//    [DBProgressHUD db_showSuccess:@"大白科技-DBProgressHUD" toView:nil];
    
    
    [DBProgressHUD db_showTips:@"大白科技-DBProgressHUD"];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [DBProgressHUD db_hideHUDAnimated:NO];
    });

}





@end
