//
//  NullTool.m
//  IOSCRM
//
//  Created by lizy on 14-8-18.
//  Copyright (c) 2014年 com.xiaoxiao.huang. All rights reserved.
//

#import "NullTool.h"

@implementation NullTool

+ (BOOL)isNullOrBlank:(NSObject*)object{
    if([object isKindOfClass:[NSNull class]]){
        return YES;
    }
    if(object == nil){
        return YES;
    }
    if ([object isEqual:@"<null>"]) {
        return YES;
    }
    if([object isEqual:@""]){
        return YES;
    }
    if ([object isEqual:@"null"]) {
        return YES;
    }
    if ([object isEqual:@"(null)"]) {
        return YES;
    }
    
    return NO;
}

+ (BOOL)isNotNullOrBlank:(NSObject*)object{
    return ![NullTool isNullOrBlank:object];
}


@end
