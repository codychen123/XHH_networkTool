//
//  ViewController.m
//  XHH_networkTool
//
//  Created by xiaohuihui on 2016/11/26.
//  Copyright © 2016年 30-陈辉华. All rights reserved.
//

#import "ViewController.h"
#import "NetworkTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self requestWithNetworkTool];
}

- (void)requestWithNetworkTool {
    //get请求
    [[NetworkTool sharedTool] requestWithURLString:@"https://httpbin.org/get" parameters:@{@"name": @"xiaoming"} method:@"GET" callBack:^(id responseObject) {
        
        NSLog(@"%@",responseObject);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
