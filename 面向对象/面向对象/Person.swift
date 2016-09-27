//
//  Person.swift
//  面向对象
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import Foundation

//swift 的类不区分接口和实现部分，只有一个swift文件
class Person: NSObject {
    //oc 属性 @Propery(nonatimic,strong)  NSString *name
    //属性份存储的属性和计算属性，前者占用内存，计算的属性不占用内存
    //1.存储属性
    var name:String="罗宁" {
        willSet(newName){//即将被赋值时，调用
            print("赋值之前调用，将要设置名称\(newName)")
        }
        didSet{//已经设置
            print("赋值后调用，原名称\(oldValue)")
        }
    }

    var age:Int=0
    //常量属性类似 OC property  readonly 只读属性
    var bloosdType:NSString="oxing"
    let birthday:String="1990"
    
    //2. 计算属性 ；不占用内存，提供了getter 和setter方法
    override var description:String{
        return "name\(name),age\(age),birthday\(birthday),birthYear\(birthYear)"
    }
    
    var birthYear:Int{
        set(newBirthYeaer){//设置器
            age=NSDate.thisYear-newBirthYeaer
        }
        get{//计算出生年份  获取器
           return NSDate.thisYear-age
        }
    }
   // lazy 延迟存储属性，实现懒加载
            lazy var school:School={
    
            let sch=School()
            return sch
            }()
 
    //构造器／构造方法
    //1,指定构造器： 只有1个，必须向上代理到父类的指定构造器
    override init() {//重写父类的方法
        name="王五"
        age=18
        bloosdType="A型"
    }
    //2. 必要构造器： 所有的子类都必须实现这个构造器（通过重写或者类继承父类）
    required init(age:Int) {
        self.bloosdType="B型"
        self.age=age
    }
    
    //3. 便利构造器： 子类即成不了父类的便利构造器
    convenience init(name:String) {
        self.init()
        self.age=19
        self.name=name
    }
    
    convenience init(name:String,age:Int) {
        self.init()
        self.name = name
        self.age=age
    }
    //类方法 oc +
    //修饰符
    //1. class 修饰符 修饰的方法 在子类中可以继承（不是对象的继承）
    class func play(){
    print("打球")
        
    }
    
    func eatSomthing(thing1:String,thing2:String){
        print("父类的 eatSometing")
    }
    
    //2. final 修饰符 表示该方法在父类中实现，在子类中不能继承
    // final 声明的方法或属性 不能被重写
    final func eatFood (thing1:String,thing2:String){
        print("父类的Food")
    }
    
    //3.static 修饰符 修饰的方法不能被子类重写
    static func eatFruit(thing1:String,thing2:String){
        print("父类的eatFruit")
    }
    
    
    
}