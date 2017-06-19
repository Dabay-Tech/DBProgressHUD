//
//  MBProgressHUD+MJ.h
//
//  Created by Donkey-Tao on 17-6-18.
//  Copyright (c) 2017年 Dabay. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Dabay)



+ (void)showSuccess:(NSString *)success toView:(UIView *)view;
+ (void)showError:(NSString *)error toView:(UIView *)view;

+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;
+ (MBProgressHUD *)showLoading:(NSString *)message toView:(UIView *)view;


+ (void)showSuccess:(NSString *)success;
+ (void)showError:(NSString *)error;

+ (MBProgressHUD *)showMessage:(NSString *)message;

+ (void)hideHUDForView:(UIView *)view;
+ (void)hideHUD;

@end
