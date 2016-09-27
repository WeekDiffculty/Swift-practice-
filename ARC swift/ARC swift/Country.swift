//
//  Country.swift
//  ARC swift
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Cocoa

class Country: NSObject {
    var name:String
    var citiname:City!
    init(name:String,citiname:City) {
        self.name=name
        self.citiname=citiname
    }
    deinit{
        print("countrt \(name) bey....")
    }
}
