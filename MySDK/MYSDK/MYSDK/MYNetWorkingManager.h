//
//  MYNetWorkingManager.h
//  MYSDK
//
//  Created by 郑信鸿 on 17/2/24.
//  Copyright © 2017年 郑信鸿. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MYNetWorkingManager : NSObject


/**
 post请求方法
 
 @param url API接口
 @param params 传入的参数设置
 @param complete 请求完成之后的回调函数

 */
+ (NSURLSessionDataTask *)post:(NSString *)url params:(NSDictionary *)params complete:(void (^)(NSInteger code, NSString *message, id data))complete;


/**
 get请求方法

 @param url API接口
 @param params 传入参数设置
 @param complete 请求完成之后的回调函数
 
 
 */
+ (NSURLSessionDataTask *)get:(NSString *)url params:(NSDictionary *)params complete:(void (^)(NSInteger code, NSString *message, id data))complete;


@end
