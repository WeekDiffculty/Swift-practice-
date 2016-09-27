//
//  Card.swift
//  ARC swift
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Cocoa

class Card: NSObject {
    var num:String
    var customer:Custom?
    init(num:String,customer:Custom) {
        self.num=num
        self.customer=customer
    }
    //析构器
    deinit{
        print("card:\(num)bye....")
    }
}
