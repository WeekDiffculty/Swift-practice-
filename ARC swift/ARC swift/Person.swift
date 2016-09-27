//
//  Person.swift
//  ARC swift
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Cocoa

class Person: NSObject {

    var name:String
    var house:Hose?
    //构造器
    init(name:String) {
        self.name=name
    }
    deinit{
     print("person\(name)bye...")
    }
}
