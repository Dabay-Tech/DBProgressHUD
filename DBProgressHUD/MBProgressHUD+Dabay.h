//
//  MBProgressHUD+MJ.h
//
//  Created by Donkey-Tao on 17-6-18.
//  Copyright (c) 2017年 Dabay. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Dabay)


//https://knightsj.github.io/


+ (void)showSuccess:(NSString *)success toView:(UIView *)view;
+ (void)showError:(NSString *)error toView:(UIView *)view;

+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;
+ (MBProgressHUD *)showLoading:(NSString *)message toView:(UIView *)view;


+ (void)showSuccess:(NSString *)success;
+ (void)showError:(NSString *)error;

+ (MBProgressHUD *)showMessage:(NSString *)message;

+ (void)hideHUDForView:(UIView *)view;
+ (void)hideHUD;



#pragma mark - 提示内容单行的HUD

+ (void)db_showSuccess:(NSString *)success toView:(UIView *)view;
+ (void)db_showError:(NSString *)error toView:(UIView *)view;
+ (void)db_showMessage:(NSString *)message toView:(UIView *)view;
+ (void)db_showSuccess:(NSString *)success;
+ (void)db_showError:(NSString *)error;
+ (void)db_showMessage:(NSString *)message;
+ (void)db_hideHUDForView:(UIView *)view;
+ (void)db_hideHUD;
+(void)db_hideHUDAnimated:(BOOL)animated;



#pragma mark - 提示内容可以换行的HUD

+ (void)db_showMultiLineSuccess:(NSString *)success toView:(UIView *)view;
+ (void)db_showMultiLineError:(NSString *)error toView:(UIView *)view;
+ (void)db_showMultiLineMessage:(NSString *)message toView:(UIView *)view;
+ (void)db_showMultiLineSuccess:(NSString *)success;
+ (void)db_showMultiLineError:(NSString *)error;
+ (void)db_showMultiLineMessage:(NSString *)message;

@end
