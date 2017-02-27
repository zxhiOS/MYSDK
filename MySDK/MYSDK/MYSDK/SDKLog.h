//
//  SDKLog.h
//  MYSDK
//
//  Created by 郑信鸿 on 17/2/24.
//  Copyright © 2017年 郑信鸿. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface SDKLog : NSObject

FOUNDATION_EXPORT BOOL isOpenLog;

FOUNDATION_EXPORT void MyLog(NSString *format,...) NS_FORMAT_FUNCTION(1,2);

@property(nonatomic, assign)BOOL isOpen;




@end
