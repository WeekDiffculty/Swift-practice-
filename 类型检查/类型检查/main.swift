//
//  main.swift
//  类型检查
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Foundation

print("Hello, World!")

//AnyObject:指的是任何类的实例类型／对象，相当于OC中的ID类型
//Any：包括所有的类型类的实例，基本数据类型或者 函数／闭包类型

let obj=NSObject()
let person=Person(name:"mounnn")
let student=Student(name:"student")
let anyObjArr:[AnyObject]=[obj,person,student]

let clousure={print("helloc")}

let anyArr:[Any]=[clousure]

var personCount=0
//is 检查 相当于 oc 中的 isKindOfClass
for anObj in anyObjArr{
    if anObj is Student{
        personCount+=1
    }
}
print(personCount)

//as 转换  指定的类型

for obj in anyObjArr{
    if let persons = obj as? Student{
        print("name:\(persons.name)")
    }else{
        print("不是人")
    }
    
}