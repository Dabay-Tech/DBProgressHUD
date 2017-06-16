//
//  LoadingImageView.m
//  UIimageee
//
//  Created by 于良建 on 16/7/6.
//  Copyright © 2016年 于良建. All rights reserved.
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
//        self.image = [UIImage imageNamed:@"loading_logo"];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        imageView.image = [UIImage imageNamed:@"loading_bg"];
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


@end
