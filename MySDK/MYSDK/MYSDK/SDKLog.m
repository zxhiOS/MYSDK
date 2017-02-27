//
//  SDKLog.m
//  MYSDK
//
//  Created by 郑信鸿 on 17/2/24.
//  Copyright © 2017年 郑信鸿. All rights reserved.
//

#import "SDKLog.h"


extern BOOL isOpenLog = NO;

void MyLog(NSString *format,...) NS_FORMAT_FUNCTION(1,2){
    
    if(isOpenLog){
        
        va_list args;
        va_start(args, format);
        NSString *str = [[NSString alloc] initWithFormat:format arguments:args];
        va_end(args);
        NSLog(@"%@",str);
        
    }
   
    
}


@implementation SDKLog


@end

