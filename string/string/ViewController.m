//
//  ViewController.m
//  string
//
//  Created by Dabay on 2017/6/16.
//  Copyright © 2017年 Dabay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   

    NSString *string=@"sdfjkkl klll";
    NSLog(@"去掉空格后的字符串=+++%@+++",[self db_deleteFrontAndRearBlankspaceFromString:string]);
    NSLog(@"去掉空格后的字符串=___%@___",[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



-(NSString *)db_deleteFrontAndRearBlankspaceFromString:(NSString *)string{
    
    NSInteger frontFlag = -1;//记录字符串前面不是空格的字段的位置
    NSInteger rearFlag = -1;//记录字符串后面不是空格的字段的位置
    NSInteger lenght=string.length;//最终字符串的长度
    
    for(NSInteger i = 0; i < string.length; i++)
    {
        if([string characterAtIndex:i]!=32){
            frontFlag=i;
            break;
        }
    }
    
    for(NSInteger i = string.length - 1; i > 1; i--)
    {
        if([string characterAtIndex:i]!=32){
            rearFlag = i;
            break;
        }
    }
    if(frontFlag!=-1 && rearFlag != -1){//前面、后面都有空格的情况
        
        lenght=string.length-(frontFlag)-(string.length - rearFlag -1);
        NSRange range = NSMakeRange(frontFlag, lenght);
        return [string substringWithRange:range];
    }else if (frontFlag != -1){//字符串前部有空格
    
        lenght=string.length-(string.length - rearFlag -1);
        NSRange range = NSMakeRange(0, lenght);
        return [string substringWithRange:range];
    
    }else if (rearFlag != -1){//字符串后部有空格
    
        lenght=string.length-(frontFlag);
        NSRange range = NSMakeRange(0, lenght);
        return [string substringWithRange:range];
    }else{//字符串前部、后部都没有空格

        return string;
    }
}

@end
