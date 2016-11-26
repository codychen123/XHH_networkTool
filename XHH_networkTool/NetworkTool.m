//
//  NetworkTool.m
//  XHH_networkTool
//
//  Created by xiaohuihui on 2016/11/26.
//  Copyright © 2016年 30-陈辉华. All rights reserved.
//

#import "NetworkTool.h"

@implementation NetworkTool

+ (instancetype)sharedTool {
    static id instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] initWithBaseURL:nil];
    });
    
    return instance;
}

- (void)requestWithURLString: (NSString *)URLString
                  parameters: (NSDictionary *)parameters
                      method: (NSString *)method
                    callBack: (void (^)(id))callBack {
    
    if ([method isEqualToString:@"GET"]) {
        [self GET:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            callBack(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"%@",error);
        }];
    }
    
    if ([method isEqualToString:@"POST"]) {
        [self POST:URLString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            callBack(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"%@",error);
        }];
    }
}

@end
