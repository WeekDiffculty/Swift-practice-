//
//  Hose.swift
//  ARC swift
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Cocoa

class Hose: NSObject {
  var   unit:String
   weak var owone:Person?
    init(unit:String) {
        self.unit=unit
    }
    deinit{
        print("house \(unit) bye...")
           }
}
