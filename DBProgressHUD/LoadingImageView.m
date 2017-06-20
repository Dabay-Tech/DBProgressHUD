//
//  LoadingImageView.m
//  UIimageee
//
//  Created by Dabay on 16/7/6.
//  Copyright © 2016年 Dabay. All rights reserved.
//

#import "LoadingImageView.h"

@interface LoadingImageView () {
    dispatch_source_t timer;
}


@end

@implementation LoadingImageView



- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        imageView.image = [UIImage imageNamed:@"loading_bg"];
        imageView.backgroundColor=[UIColor redColor];
        [self addSubview:imageView];
        
        timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
        dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 0.04 * NSEC_PER_SEC, 0 * NSEC_PER_SEC);
        dispatch_source_set_event_handler(timer, ^{
            [UIView animateWithDuration:0.04 animations:^{
                imageView.transform = CGAffineTransformRotate(imageView.transform, -M_PI_4/4);
            } completion:^(BOOL finished) {
                
            }];
        });
        dispatch_resume(timer);
    }
    return self;
}



/**
 创建并返回旋转的加载View

 @return 返回带有加载动画的view
 */
+(instancetype)loadImageView{
    
    LoadingImageView *loadingView=[[LoadingImageView alloc]init];
    loadingView.image=[UIImage imageNamed:@"loading_bg"];
    loadingView.image = [loadingView.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    loadingView->timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
    dispatch_source_set_timer(loadingView->timer, DISPATCH_TIME_NOW, 0.04 * NSEC_PER_SEC, 0 * NSEC_PER_SEC);
    dispatch_source_set_event_handler(loadingView->timer, ^{
        [UIView animateWithDuration:0.04 animations:^{
            loadingView.transform = CGAffineTransformRotate(loadingView.transform, -M_PI_4/4);
        } completion:^(BOOL finished) {
        }];
    });
    dispatch_resume(loadingView->timer);
    return loadingView;
}


@end
