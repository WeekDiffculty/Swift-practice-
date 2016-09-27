//
//  NSDataExtern.swift
//  面向对象
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Foundation

//扩展 NSDate 
extension NSDate {
    //staic 修饰属性时类型属性，访问的时候 类名，属性名
    static var thisYear:Int{
        let dateFormatter=NSDateFormatter()
        dateFormatter.dateFormat="yyyy/MM/dd"
        let datestr=dateFormatter.stringFromDate(NSDate())
        let strArry = datestr.componentsSeparatedByString("/")
        return Int(strArry[0])!
    }
}
