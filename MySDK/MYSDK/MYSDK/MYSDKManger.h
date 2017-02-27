//
//  MYSDKManger.h
//  MYSDK
//
//  Created by 郑信鸿 on 17/2/23.
//  Copyright © 2017年 郑信鸿. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MYSDKManger : NSObject

@property(nonatomic, copy)NSString *appKey;

@property(nonatomic, copy)NSString *appSecrect;

@property(nonatomic, copy)NSString *baseUrl;

+ (instancetype)defalutManager;

/**
 *  打开日志
 *
 *  @param isOpen YES代表打开，No代表关闭
 */
-(void) openLog:(BOOL)isOpen;


- (void)setAppKey:(NSString *)appKey
       appSecrect:(NSString *)appSecrect;


- (void)setHttpBaseUrl:(NSString *)baseUrl;

+ (void)printTest;



@end
