//
//  SwiftViewController.swift
//  OCNetworkTool
//
//  Created by Shenzhen_iOS_07 on 16/11/26.
//  Copyright © 2016年 Shenzhen_iOS_07. All rights reserved.
//

import UIKit

class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
        OCNetworkTool.shared().request(withURL: "https://httpbin.org/get", parameters: ["name": "xiaoming"], method: "GET", callBack: {(responseObejct: Any?)->() in
            print(responseObejct!)
        })
    }
}
