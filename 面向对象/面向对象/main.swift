//
//  main.swift
//  面向对象
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Foundation
//import Person.h oc
//swift 所有文件都在一个项目中，都在同一个命名空间，不需要导入类的声明文件，可直接使用
print("Hello, World!")
//class clasName{
//  //方法属性
//  }

var a=0

let person = Person()
person.name="李凌来"
print(person.name)
print(person.birthYear)
person.birthYear=24
print(person.birthYear)
print(person.bloosdType)

print(person.description)

let person1=Person()
print(person1.description)

let student=Student()//调用子类指定构造器 ->父类 person
print("学号\(student.stuNo) 姓名\(student.name)")

let student1 = Student(age:20)
print(student1.description)

let student2 = Student(name:"老王",age: 35)
print(student2.description)

Person.play()
Student.play()

student2.eatSomthing("炒面", thing2:"鸡蛋")
print("学校名称\(student2.school.name)")

student2.eatFood("蛋炒饭", thing2: "面条")
