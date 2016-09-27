//
//  main.swift
//  单例
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Foundation

let instance  = Singleton.shareInstance

let instance1 = Singleton.shareInstance

instance.printt()//调用实例方法

print(instance)