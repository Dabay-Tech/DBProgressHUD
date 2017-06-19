//
//  MBProgressHUD+MJ.m
//
//  Created by Donkey-Tao on 17-6-18.
//  Copyright (c) 2017年 Dabay. All rights reserved.
//

#import "MBProgressHUD+Dabay.h"
#import "LoadingImageView.h"

@implementation MBProgressHUD (Dabay)
#pragma mark 显示信息
+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.detailsLabel.text = text;
    hud.detailsLabel.font = [UIFont systemFontOfSize:15];
    // 设置图片
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon]]];
    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    hud.bezelView.color = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.645362367021276];
    // 1秒之后再消失
    [hud hideAnimated:YES afterDelay:1.5];
}



/**
 显示数据加载中的转圈的效果，并显示相应的提示信息

 @param message 加载的提示信息
 @param view HUD要加载到的View
 @return 返回HUD
 */
+ (MBProgressHUD *)showLoading:(NSString *)message toView:(UIView *)view {
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.detailsLabel.text = message;
    hud.detailsLabel.font = [UIFont systemFontOfSize:12];
    hud.detailsLabel.textColor = [UIColor whiteColor];
    //添加动态加载logo
    hud.mode = MBProgressHUDModeCustomView;
    LoadingImageView *loadImageView = [[LoadingImageView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    hud.customView = loadImageView;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    hud.animationType =MBProgressHUDAnimationFade;
    // YES代表需要蒙版效果
    //hud.dimBackground = NO;
    hud.backgroundColor = [UIColor clearColor];
    hud.bezelView.color = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:0.645362367021276];
    return hud;
}

#pragma mark 显示错误信息
+ (void)showError:(NSString *)error toView:(UIView *)view{
    [self show:error icon:@"error.png" view:view];
}

+ (void)showSuccess:(NSString *)success toView:(UIView *)view
{
    [self show:success icon:@"success.png" view:view];
}

#pragma mark 显示一些信息
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view {
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = message;
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // YES代表需要蒙版效果
    //hud.dimBackground = NO;
    return hud;
}

+ (void)showSuccess:(NSString *)success
{
    [self showSuccess:success toView:nil];
}

+ (void)showError:(NSString *)error
{
    [self showError:error toView:nil];
}

+ (MBProgressHUD *)showMessage:(NSString *)message
{
    return [self showMessage:message toView:nil];
}

+ (void)hideHUDForView:(UIView *)view
{
    [self hideHUDForView:view animated:YES];
}

+ (void)hideHUD
{
    [self hideHUDForView:nil];
}
@end
