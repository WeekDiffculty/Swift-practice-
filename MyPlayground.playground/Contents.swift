//: Playground - noun: a place where people can play

import UIKit
import Foundation
var str = "Hello, playground"
var a = 10
a = 11
a = 35
let b = 20
print(b)
print(a)
print(0b110)
print(0xff)
print(a+b)
print("af"+"bf")//字符相连
//  ..<..范围运算符
var c:Int8
c = 78
print(c)
if a<b
{
    print("假")
}
else{
    if a>b
    {
        print("\(a>b)真")
    }
}
//类型
print(Int.max)//自动识别计算机的位数
print(Int64.max)

print(Int8.max)
print(Int8.min)
print(UInt8.max)
print(UInt16.max)
print(UInt32.max)
print(UInt64.max)

var f:Double = 1.20

print(f)
//构造器 :类型名（值）
var ch:Character = "好"
var ss:String = "dsfjsdfka"
var m:Double = 123
print(m)
var ll:Bool = true
var i:Int = (b)
print(i)
var strs:String = "\(ll)"//bool转换字符串
print(strs)
var qq:String? = "hello"//指定类型，没值的话就是nil
qq="123"
//字符串转基本类型
var kkk:Int
kkk=Int(qq!)!
print(qq)
//>>>整形－浮点型 截取
let lfloat=2.555
let lInt=Int(lfloat)
print(lInt)

//>>>>>>>>>>>>>>条件判断
var num = 8
switch num
{
case 0:
    break;
case 8,7://7或8
    print("\(num)=8")
    fallthrough//在满足后，下面一句也执行
case 9...12://9到12
    print("\(num)=9")
    break;
case 13..<14://不包括14
    break;
default:
    break;
}


var year=2014
var month=7
//复合条件
if month%3==0
{
    if month%5==0
    {
        print("OK")
    }
}

if month%3==0 && month%5==0
{
    print("OK")
}
//31天的月份
switch month
{
case 1,3,5,7,9,12:
    print("31")
    break;
case 2,4,6,8,10:
    print("30")
default:
    break;
}
//>>>>>>>>>>>>>>>循环
//0-－－10
for i in 1 ..< 10
{
    print("\(i)\t")
    
}
var X=0;
for x in 1 ..< 100
{
    X=X+x;
    print("(X)")
}

func f1( A:Int)
{
    print("\(A)")
}

f1(8)

f1(9)

func sum()->Int
{
    var s = 0
    for i in 1...100
    {
        s+=i
    }
    print(s)
    return s;
}
print(sum())

//定制函数 是否是质数
func isPrime(n:Int)->Bool
{
    var b:Bool = true
    for i in 2..<n {
        if n%i==0
        {
        b=false
        break
        }
    }
    return b
    
}
print(isPrime(2))
//swift不需要导入头文件？
func add( a:Int, b:Int)->Int{
    return a+b
}

print(add(3, b:8))


var iiii = 4
for l in 0..<19{
    iiii += l;
}

let red = UIColor.redColor();

let view=UIView(frame:CGRectMake(0,0,67,34));
view.backgroundColor=red
let but=UIButton(frame:CGRectMake(0,0,100,100))
but.backgroundColor=UIColor.orangeColor()
but.setTitle("我去", forState: .Normal)
but.setTitleColor(UIColor.greenColor(), forState: .Normal)



//可选类型
let ontionInt=Int("e234")
print(ontionInt)

var girFiend:String?//可选类型，自动初始化为0
print(girFiend)

girFiend="dksfaj"
print(girFiend)

if(girFiend != nil)//必选类型，
{
    print("我的朋友叫\(girFiend!)")  //强制解析，如果确定优质，加上!可取值

}

if let gf = girFiend////可选绑定，如果可选类型有值，则把值付给一个临时变量或常量

{
    print(gf)
}


let isGirl:Bool

//必选类型（隐式解析可选类型）：！ 必须要指定类型，如果在程序运行过程中，一个变量／常量一旦赋值，不能为空
var name:String!

name="小米"
name=nil
//print(name)

if let myName=name //如果不满足就不执行
{
    print(myName)
}

let MyInt:Int16=Int16(Int8.max)+1


//溢出运算符 &
let myInt1=Int8.max &+ 1
print(myInt1)


//浮点型  % ++
var flot = 8.5 * 2.5
print(flot)
//3.0不支持
//flot ++
//flot --

//区间运算符 ...闭区间  ..<半开区间
for p in 0 ... 6
{
    print(p)
}

//空合运算符： ？？
// a??b  表示 a!=nil ?a!:b (a表示可选类型，a的值类型和b的值类型相同)

var customColor:String?
customColor="蓝色"
var defaultColor = "红色"
let finalColor = customColor ?? defaultColor
print(finalColor)

//guard 语句： guard 条件语句 else (不成功的时候要做的事情) guard中else必须有

func checkUP (person:[String:String])
{
    //id为空，执行else后知兴替
    guard let id = person["id"] else{
        print("没有身份证，不能进考场")
        return
    }
    guard let examNo = person["examNo"] else{
        print("不让进")
        return
    }
    print("进入，身份证：\(id) 准考证:\(examNo)")
    
    
}

checkUP([:])
checkUP(["id":"344"])
checkUP(["id":"222","examNo":"666"])


//switch  元组匹配

let point = (2,5)
switch point{
case (0,0):
    print("原点")
case (_,0):
    print("y轴上")
case (0,_):
    print("x轴上")
case let (x,y) where x==y ://
    print("x==y轴的点")
    
case (-2 ... 3,-4 ... 4):
    print("在矩形中的点")
default:
    print("其他")
    
}

let time = "下午"
//贯穿 fallthrough
switch time{
    case "下午":
    print("技术分享")
    fallthrough
    case "上午":
    print("上课")
    case "晚上":
    print("自习")
default :
    print("jj")
    
}

//循环
for i in 0 ..< 5{
    print("i=\(i)")
}

var L=0

while L < 5{
    print(L)
    L += 2
}

repeat { //do while 类似
    print(L)
}while L<5


//9 9 乘法表
outsideFor: for a in 1 ... 9 {
    insideFor:
        for x in 1 ... a{
            print("\(a)*\(x)=\(a*x)",terminator:"\t")//不换行
            if a*x == 81
            {
                //break ／／默认跳出当前玄幻
                break outsideFor //跳出指定循环
            }
    }
    print("\n")
}
//水仙花数 一个3位数的各位的立方和等于本身

for LLL in 100 ..< 999{
    let A = (LLL/10)%10 //
    let B = LLL/100//百位
    let C = LLL%10  //个位
    if LLL==A*A*A+B*B*B+C*C*C{
        print("水仙花数\(LLL)")
    }
}

//穷举法，穷尽所有可能性，直到找到答案，
//百元百鸡 100元买鸡 公5元 母 3元 小鸡3元 有多少种方案
var times = 0
for x in 0...20//公
{
    for y in 0...33{//母
        for z in 0...33{//小
            if x*5+y*3+z*3==100
            {
                times+=1;
                print("x,y,z,\t\(x)\t\(y)\t\(z)\t\(times)次数")
            }
        }
    }
}

var array = ["苹果","茄子","桃"]
print(array.capacity)
print(array.count)

//数据结构
let str111:String = "abc"
let newStr=str111.stringByAppendingString("123")
print(str)
print(newStr)


//拼接 ＋
let hello=newStr+"hhh"
print(hello)

//插值
var swift = "swift"
swift = "hello\(swift)"
print(swift)

//判断是否相等
if swift != str111
{
    print("不想等")
}

//字符串截取
let longStr = "1242354654fdsff6"
let index1 = longStr.startIndex.advancedBy(7)
print(index1)

let index2 = longStr.endIndex.advancedBy(-5)//从后  －5  索引 11
print(index2)

let  subStr = longStr.substringToIndex(index1)
print(subStr)

let subStr1 = longStr.substringFromIndex(index2)
print(subStr1)

let subStr2 = longStr.substringWithRange(Range(index1...index2))
print(subStr2)

let longNssstr = longStr as NSString
let subSTR11 = longNssstr.substringFromIndex(5)
print(subSTR11)

//前缀 ，后缀
if longStr.hasPrefix("124"){
    print("有前缀")
}

if longNssstr.hasSuffix("f6"){
    print("有后缀f6")
}

//遍历  属性 characters 打印单个字符
for char in longStr.characters {
    print(char)
}

//数组：swift 数组可存放任何类型，不一定是对象
//Array<Int>[Int]
//oc数组的初始化
let nsArr:NSArray = ["13124","463545"]
let nsmArr:NSMutableArray=NSMutableArray()
nsmArr.addObject(nsArr)

//swift 数组的
var intArr = Array<Int>()
intArr=[1,4,5,6,8,]
let intArr1 = [Int]()//空数组
let names=["zhangsan","lisi","wangwu"]

//带默认值的数组
let floatArr=Array(count:5,repeatedValue:3.14)//构造器
//数组加
let foatArra1 = [2,6,5,6,2,7]
let arrrrrr = intArr + foatArra1

if intArr.isEmpty{
    print("数组为空")
}

//数组追加元素
intArr.append(5)
//追加多个元素
intArr+=[7,9]

//数组下标操作
intArr[0]=9
//多下表操作
intArr[0...2]=[7,0,8]//下标个数与元素个数保持一致，直接替换
print(intArr)
intArr[0...2]=[8]//下标个数多余元素个数,替换，并删除
print(intArr)

intArr[0...1]=[0,2,5,5,]//下标个数少于元素个数，替换追加
print(intArr)

//插入和删除
intArr.insert(100, atIndex: 3)
intArr.removeAtIndex(4)

//遍历
//元素
for value in intArr{
    print("value=\(value)")
}

//元素及下表
for (ind,val)in intArr.enumerate(){
    print("\(ind),\(val)")
}
//字符串与数组的转换
let nameStr444 = names.joinWithSeparator("👌")
let newSSSnames = nameStr444.componentsSeparatedByString("lisi")
print(newSSSnames)


//字典
//[key:value]
let OCDict:NSDictionary=["name":"张三","age":20]

//空字典 swift
let dict = Dictionary<String,Int>()
let dict1 = [String:Int]()

var person = ["name":"李四","age":20]
print(person)


//字典  关键字 下标操作
person["school"]="青云"
print(person)

person["age"]=21//修改， （键存在）
print(person)

person["age"]=nil//删除 置为nil
print(person)

print(person["name"]!)//通过下标获取的键值得到可选类型，所以加!
person.updateValue(20, forKey: "age")//如键存在修改，不存在添加
print(person)

if let removeValue = person.removeValueForKey("age"){
    print("被删除的信息为:\(removeValue)")
}

//遍历
//遍历 关键字 值
for (key,value) in person{
    print("\(key):\(value)")
}

//只遍历关键子
for key in person.keys{
    print(key)
}

//根据keys 或 values 构造数组

let keys = Array(person.keys)
print(keys)

let  values = Array(person.values)
print(values)



// 枚举和结构体
//OC 枚举
/*
 enum WeekDay{
 mon,
 tue,
 }typedef enum{}weekday
 */
//swift枚举

//1. 定义每个枚举值 都有case
enum WeekDay{
    case mon
    case tue
    case Wed
    case Thu
    case Fri
    case Sat
    case Sun
}

//2.一个case,多个枚举值都好分割
enum weekday{
    case Mon,tue,wed,thu,Fri,sat,sun
}


var day=WeekDay.mon

var day1=weekday.wed


day = .Sun//变量类型已知，赋值不在需要枚举的类型名，直接枚举值

//关联值，额外存储枚举值对应的信息
enum Person{
    case Teacher
    case Student(Int)//对应Student来说，需要有个整数与他关联
}
let teacher = Person.Teacher
let student = Person.Student(1605666)
print(student)


switch student{
case .Teacher:
    print("老师")
case .Student(let stuNo):
    print("学生学号 \(stuNo)")
}

//枚举原始值：枚举值对应的默认填充值 默认枚举值不回和整形想对应
enum ControlCharacter:Character{
case Tab="\t"
case NewLIne="\n"
case enter="\r"
}

//原始值类型是Int 的话，每个枚举值的原始值是默认从0开始的整数
enum Direction:Int{
    case UP,Down,Left,Right
}
//原始值类型为String,每个枚举值的原始值默认是自己的名字
enum Season:String {
    case Sprint,Summer,Autumn,Winter="win"
}

let dir=Direction.Down
print(dir)
print(dir.hashValue)
print(dir.rawValue)

let dir1 = Direction(rawValue:2)
print(dir1)

let season=Season(rawValue:"win")
let season1=Season.Autumn
print(season1.rawValue)
print(season1.hashValue)
print(season)




//结构体
//c/oc
//struct sutdeng{
//char name[10];
//}

//swift 

struct Student {
    var name:String = "某某某"
    var age:Int = 0
}
//生成一个结构体实力
//默认构造器，每个属性都有默认值，没有自定义的构造器，构造方法
let stu=Student()
print("name:\(stu.name) age:\(stu.age))")

let stu1=Student(name:"张三", age :20)

print("name:\(stu1.name) age:\(stu1.age)")



//自定义构造器
struct Point {
    var x:Int
    var y:Int
    init(){//构造器／方法／
        x=10
        y=10
    }
    //自定义构造器
    init(xx:Int ,yy: Int){
        x=xx
        y=yy
    }
}
let points = Point()
print("x=\(points.x) y= \(points.y)")

let point12 = Point(xx:56 ,yy: 78)
print("x1=\(point12.x) y=\(point12.y)")

//调用类中的（结构体）属性
class Frame{
    var origin:Point=Point()
}
//值类型 结构体是值类型
let frame = Frame()
frame.origin.x=10
frame.origin.y=100
print("frame x=\(frame.origin.x) y= \(frame.origin.y)")

var point2=points
point2.y=40
print(points.y)
//类是引用类型，newFrame和frame引用的是同一个实力（内存空间），所以任意修改一个都会影响另一个
let newFrame=frame
newFrame.origin.x=20
print(frame.origin.x)


//恒等运算符=== !==判断两个引用是否指向一个实例

if newFrame === frame{// 类
    print("newFrame和frame引用同一个实例")
}

//结构体与类的选择
//少量的数据或者不需要继承时,尽量使用结构体.
//数据较复杂或者需要继承时,必须要使用类




/**
 * 函数
 */

/*
 c
 
 int add(int x, int y)
oc - (void)add()
 */

//1.无参数
func printHollo(){
    print("hello")
}
printHollo()
//swift 支持命名空间，默认情况下一个项目中的所有文件都在一个命名空间，所以不同文件中类型定义活着韩式实现，不需要生命就可以直接调用
func testFunc(){
    print("#function")
}
testFunc()

//2.无参 有返回值
func creatString()->String{
    return "newstring"
}
print(creatString())

//3. 无参数，多返回值，元组
func maxAddndminArray()->(Int,Int){
    let nums = [-3,1,0,9]
    var max = nums[0]
    var min = nums[0]
    
    for num in nums[1..<nums.count] {
        if max < num  {
         max=num
        }else if min > num{
         min = num

        }
    }
    return(max,min)
}
let (max,min)=maxAddndminArray()
print("max=\(max)min=\(min)")




//自定义外部参数名
func travel (from start:String, to end:String){
    print("从\(start)到\(end)")
}

travel(from: "zhengzhou", to: "luoyang")

//可变参数（个数不确定）：参数数量不确定：类型。。。
func eatLunchAtCompany(pepeo:String...){
    print("统计今天中午吃饭的人数\(pepeo.count)")
    for pepeos in pepeo{
        print(pepeos)
    }
}

eatLunchAtCompany()
eatLunchAtCompany("张三","李四","王五")

//4 常量的参数和变量参数
//外部参数名：调用时使用
//内部参数名：函数体调用时使用
//默认第一个参数不需要外部参数名，第二个及以后的参数外部名和局部名相等
func add(x:Int,y:Int){
    print("x\(x)y\(y)")
}
print(add(7, b: 8))

//自定义外部参数名
//用_忽略第二个及后面的外部参数名
func mul (x:Int,_ y:Int){
    print("x\(x)  y\(y)   x*y\(x*y)")
}
//自定义外部参数名
func travels(from start:String, to stop:String ){
    print("from  \(start)  to  \(stop)")
}

travel(from: "日本", to: "美国")
//可变参数，（个数不定）：参数数量不定：类型。。。

func eatAtCompanyCount(personsss:String...){
    print("统计今天中午吃饭的人数\(personsss.count))个")
    for perssss in personsss{
        print(perssss)
    }
}
eatLunchAtCompany()
eatLunchAtCompany("王麻子","小李子","滋滋滋")

//常量的参数和变量的参数
//默认参数时常量参数，在参数体中是不能修改
//func testFunc(vall:Int){
//    vall = 10
//}

//美元转换
func RMBFromDollor (var money:Double)->Double{
    money*=6.48
    return money
}
print(RMBFromDollor(10))

//输入输出参数
//inout 相当于c 语言中的内存地址
func swap(inout x:Int,inout y:Int){
    let temp = x
    x=y
    y=temp
}
var vv = 3
var nn = 4
swap(&vv, y: &nn)
print("vv\(vv) nn \(nn)")

//函数类型，函数引用>>>>>>>>>>>>>>>>>>>>>>>>>
//1. 定义变量／常量 函数指针
var cacFunc:(Int,Int)->() = add
cacFunc(5,6)
cacFunc=mul
cacFunc(5,6)
//2. 作为参数类型，用于回调
func xiangcheng (a:Int,b:Int)->Int{
    return a*b
}
func callBack(calc:(Int,Int)->(Int),a:Int,b:Int){
    calc(a,b)//＝＝add(a,b)
}
callBack(xiangcheng, a: 4, b: 9)

//3.作为返回值类型
func makeFunc()->((Int)->Int){
    //嵌套函数
    func addOne(num:Int)->Int{
        return num+1
    }
    return addOne
}

let newFunc=makeFunc()
print(newFunc(7))

//闭包>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//闭包类似于oc 的block clouse 
/*oc的block
 void (^block)()={
 
 //...
}
 */
//swift 闭包语法： in 后面是执行体
let clouse={
    (x:Int,y:Int)->Int in return x+y
}
print(clouse(4,7))
//参数编写，参数已知时，使用$0,$1,表示从0个参数，1个参数，以此类推
let addd:(x:Int,y:Int)->Int = {$0+$1}
print(addd(x: 4,y: 5))

//单表达式，隐式返回，省略return
let mul = {(x:Int,y:Int) in x*y}
print(mul(5,6))

let numbers=[-5,3,7,9]

let sortNumbers = numbers.sort(>)//从大到小排序

print(sortNumbers)

//尾随闭包:闭包是函数最后一个参数，闭包比较复杂时，考率用尾随闭包，
let numberss=[57,6008,78,28]
let digNum = [0:"zero",1:"one",2:"two",3:"three",4:"four",5:"five",6:"six",7:"seven",8:"eight",9:"nine"]
//map看作oc 中for 循环枚举每一个元素
let EnglishNumber=numberss.map{
    (var nummm) -> String in
    print("接收的元素 \(nummm)")
    var outPut=""
    //以此读取数字中的每个字，转为英文
    while nummm > 0 {
        //取出对应数字的单词
        let keys=nummm%10//从个位开始
        outPut = digNum[keys]!+outPut
        nummm/=10
    }
    return outPut
}
print(EnglishNumber)

//函数中的函数
func makeIncreament(forIncreament amount:Int)->(()->Int){
    var runingTotal=0
    NSLog("\(runingTotal)")
    //嵌套函数 函数中的函数 闭包
    func inceament ()->Int{
        runingTotal+=amount
        return runingTotal
    }
    return inceament
}

let increaament = makeIncreament(forIncreament: 10)
print("\(increaament())")
print("\(increaament())")


//引用闭包
let alsoIncreament = makeIncreament(forIncreament: 10)
print("\(alsoIncreament())")
print("\(alsoIncreament())")

//alsoIncrementTen 和incrementTen 是引用一个实例(内存地址),所以调用时,修改是同一个实例


//if alsoIncreament() === increaament(){
//    print("同一块内存")
//}

//函数3种用法  做返回值  参数 函数中的函数
//重点  1。字典／数组的使用 2.枚举结构体的使用，构造器

