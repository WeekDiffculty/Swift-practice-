//
//  student.swift
//  ARC swift
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Cocoa

class student: NSObject {
     var age = 0
    lazy var closure:()->()={
        //[weak self] in //类似oc        无主引用不加感叹号
        [unowned self] in //把self 对象 改委无主引用
        print("age :\(self.age)")
    }
    deinit{
        print("student bye....")
    }
}
