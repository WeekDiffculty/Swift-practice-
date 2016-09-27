//
//  ViewController.swift
//  数据类型
//
//  Created by qingyun on 16/9/19.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let str:NSString = "123"
        let newStr=str.stringByAppendingString("456")
        //拼接字符串
        print(newStr)
        print(str)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

