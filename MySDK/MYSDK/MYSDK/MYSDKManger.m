//
//  MYSDKManger.m
//  MYSDK
//
//  Created by 郑信鸿 on 17/2/23.
//  Copyright © 2017年 郑信鸿. All rights reserved.
//

#import "MYSDKManger.h"
#import "MYSDK.h"


@interface MYSDKManger ()


@end

@implementation MYSDKManger


+ (instancetype)defalutManager{
    
    static MYSDKManger *managerInstance = nil;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        managerInstance = [[self alloc] init];
    });
    return managerInstance;
}



+ (void)printTest{
    MyLog(@"打印测试信息");
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *URL = [NSURL URLWithString:@"https://www.baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSLog(@"%@ %@", response, responseObject);
        }
    }];
    [dataTask resume];
}


- (void)openLog:(BOOL)isOpen{
   
    isOpenLog = isOpen;
    
}


- (void)setAppKey:(NSString *)appKey
       appSecrect:(NSString *)appSecrect{
    self.appKey = appKey;
    self.appSecrect = appSecrect;
    
}

- (void)setHttpBaseUrl:(NSString *)baseUrl{
    
    self.baseUrl = baseUrl;
    
}

@end
