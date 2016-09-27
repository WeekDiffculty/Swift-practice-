//
//  Custom.swift
//  ARC swift
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Cocoa

class Custom: NSObject {
    var name:String
  weak  var car:Card?
    init(name:String) {
        self.name=name
    }
    //析构器
    deinit{
       print("name \(name)bye...")
    }
}
