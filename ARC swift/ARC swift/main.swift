//
//  main.swift
//  ARC swift
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Foundation

print("Hello, World!")
/*
 默认强引用
 强引用使用不当，特别时循环引用，会导致内存泄漏
 用week 解决强引用问题   */
//var p1:Person?=Person(name:"张三")
//var p2:Person?=p1
//var p3:Person?=p2
//
//p1=nil
//p2=nil
//p3=nil//最后一个引用对象时，被销毁


var zhangsan:Person?=Person(name:"张三")
var house:Hose?=Hose(unit:"一单元")
zhangsan?.house=house
house?.owone=zhangsan
zhangsan=nil
house=nil

/*
 循环引用中 一个属性允许为nil加另外一属性 不允许为nil 使用unowned ,没有持有关系
 如果属性可选类型？只能用week
 如果属性不是可选类型 只能用无主引用（unowned ），引用对香被回收，属性不会置为nil
 */

var lisi:Custom?=Custom(name:"张三")
var card:Card?=Card(num:"6666",customer: lisi!)

lisi?.car=card
lisi=nil
card=nil

//城市和国家 


