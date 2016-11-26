//
//  NetworkTool.h
//  XHH_networkTool
//
//  Created by xiaohuihui on 2016/11/26.
//  Copyright © 2016年 30-陈辉华. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface NetworkTool: AFHTTPSessionManager

/**
 创建网络请求工具类的单例
 */
+ (instancetype)sharedTool;

/**
 创建请求方法
 */
- (void)requestWithURLString: (NSString *)URLString
                  parameters: (NSDictionary *)parameters
                      method: (NSString *)method
                    callBack: (void(^)(id responseObject))callBack;
@end
