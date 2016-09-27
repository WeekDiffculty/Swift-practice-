//
//  Singleton.swift
//  单例
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Foundation
class Singleton:NSObject{
    // 二。swift 写法
    static var shareInstance=Singleton()
    private override init() {
                    //设置构造器为私有，避免在外部类中创建新的实例，保证唯一性
        }
    func printt() -> () {
        print("实例方法")
    }
    
}