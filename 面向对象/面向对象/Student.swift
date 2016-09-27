//
//  Student.swift
//  面向对象
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Cocoa
//子类继承父类 继承父类所有的方法属性
class Student: Person {
    var stuNo:Int=0//学号
    //1 重写构造器
  override   init() {
        super.init()
     // 调用父类指定的构造器
       // super.init()
    self.school.name="青云"
    }
    //继承父类Person 比要构造器
    required init(age: Int) {
       
            super.init()
            self.age=age
     
    }
    
    //重写父类的方法 eatSomthing
    override  func eatSomthing(thing1: String, thing2: String) {
        super.eatSomthing(thing1, thing2: thing2)
        print("子类的 eatSomthing")
    }
}
