//
//  NullTool.h
//  IOSCRM
//
//  Created by lizy on 14-8-18.
//  Copyright (c) 2014年 com.xiaoxiao.huang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NullTool : NSObject

/**
 *  判断一个对象是否为空
 *
 *  @param object 对象
 *
 *  @return BOOL
 */
+ (BOOL)isNullOrBlank:(NSObject*)object;

+ (BOOL)isNotNullOrBlank:(NSObject*)object;

@end
