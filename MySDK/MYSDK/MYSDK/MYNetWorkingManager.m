//
//  MYNetWorkingManager.m
//  MYSDK
//
//  Created by 郑信鸿 on 17/2/24.
//  Copyright © 2017年 郑信鸿. All rights reserved.
//

#import "MYNetWorkingManager.h"
#import "MYSDKManger.h"

@interface MYNetWorkingManager ()

@end

@implementation MYNetWorkingManager

//POST方法
+ (NSURLSessionDataTask *)post:(NSString *)url params:(NSDictionary *)params complete:(void (^)(NSInteger code, NSString *message, id data))complete{
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
     NSDictionary *paramster = [self setParamsWithParams:params];
    NSURLSessionDataTask *dataTask = [mgr POST:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        
        if (complete) {
            complete(100,@"测试",responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        // [MBProgressHUD showError:@"请检查网络"];
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        if (complete) {
            complete(-100,@"测试",error);
        }
    }];
    return dataTask;
    
}

//GET方法
+ (NSURLSessionDataTask *)get:(NSString *)url params:(NSDictionary *)params complete:(void (^)(NSInteger code, NSString *message, id data))complete{
    
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    NSDictionary *paramster = [self setParamsWithParams:params];
    NSURLSessionDataTask *dataTask = [mgr GET:url parameters:paramster progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        if (complete) {
            complete(100,@"测试",responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
       
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        if (complete) {
            complete(-100,@"测试",error);
        }
    }];
    return dataTask;
    
    
}


/**
 设置公用的参数

 @param params 传入参数
 @return 返回参数
 */
+ (NSDictionary *)setParamsWithParams:(NSDictionary *)params{
    
    NSDictionary *mutalParams = [NSMutableDictionary dictionaryWithDictionary:params];
    
    
    return mutalParams;
}



@end
