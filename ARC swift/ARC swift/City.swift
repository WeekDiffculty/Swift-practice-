//
//  City.swift
//  ARC swift
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Cocoa

class City: NSObject {
    var name:String
    var contry:Country
    init(name:String,contry:Country) {
        self.name=name
        self.contry=contry
    }
    deinit{
        print("city \(name) bey.....")
    }
    
}
