//
//  SwiftNetworkTool.swift
//  XHH_networkTool
//
//  Created by xiaohuihui on 2016/11/26.
//  Copyright © 2016年 30-陈辉华. All rights reserved.
//

import Foundation

class SwiftNetworkTool: AFHTTPSessionManager {
    //单例
    static let shared = SwiftNetworkTool()
    
    //网络中间层的接口方法
    func request(urlString: String, parameters: [String: Any]? = nil, method: String, callBack: @escaping (_ responseObject: Any?) -> ()) {
        
        //网络请求成功的闭包
        let succes = {
            (task: URLSessionDataTask, response: Any?) in
            callBack(response)
        }
        
        //网络请求失败的闭包
        let failure = {
            (task: URLSessionDataTask?, error: Error) in
            callBack(nil)
        }
        
        if method == "GET" {
            self.get(urlString, parameters: parameters, progress: nil, success: succes, failure: failure)
        }
        
        if method == "POST" {
            self.post(urlString, parameters: parameters, progress: nil, success: succes, failure: failure)
        }
    }
}
