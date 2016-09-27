//
//  FistVC.swift
//  第一个UI
//
//  Created by qingyun on 16/9/22.
//  Copyright © 2016年 qingyun. All rights reserved.
//
import UIKit


class FistVC: UIViewController {
    var count=0
    let lbl_tag=100//代替OC的宏定义
    var  label=UILabel?()
    override func viewDidLoad() {
        super.viewDidLoad()
        //背景颜色
        self.view.backgroundColor=UIColor.orangeColor()
        //1 label
        let rect = CGRect(x:100,y: 100,width: 100,height: 100)
        let lbl=UILabel(frame:rect)
        lbl.text="青云"
        lbl.backgroundColor=UIColor.redColor()
        lbl.textColor=UIColor.whiteColor()
        lbl.textAlignment=NSTextAlignment.Center
        lbl.tag=lbl_tag //必须是唯一值，不然会出现莫名其貌的错误
        self.view.addSubview(lbl)
        label=lbl
        //2 button
        let mybuttton=UIButton(frame:CGRectMake(100,200,100,100))
        mybuttton.setTitle("按钮", forState: .Normal)
        mybuttton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        mybuttton.addTarget(self, action: #selector(clikMe), forControlEvents: .TouchUpInside)
        self.view.addSubview(mybuttton)
        
        //3 跳转btn
        let btn = UIButton(frame:CGRectMake(100,300,100,100))
        btn.setTitle("go", forState: .Normal)
        self.view.addSubview(btn)
        btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        btn.addTarget(self, action: #selector(gogo), forControlEvents: .TouchUpInside)
    }
    func clikMe(sender:UIButton){
        count += 1
        //as! 表示枪支类型转换
        label?.text=String(count)
//        let lbl = self.view.viewWithTag(lbl_tag)as! UILabel
//        lbl.text="haha"
        if count == 10
        {
            alertView()
        }
    }
    func alertView(){
        //定义对话框对象
        let alert = UIAlertController(title: "温馨提示",message: "到10了,还玩",preferredStyle: UIAlertControllerStyle.ActionSheet)
        alert.addAction(UIAlertAction(title: "确定",style: UIAlertActionStyle.Destructive,handler: {
            (UIAlertAction) in
            print("确定")
            self.count=0
        }))
        alert.addAction(UIAlertAction(title: "取消",style: UIAlertActionStyle.Default,handler:{
            (UIAlertAction) in
              print("取消")
        }))
        //弹出
        self.presentViewController(alert, animated: true, completion: nil)
    }
    //打开时图控制器的方法
    func gogo(){
     self.presentViewController(SecondVC(), animated: true, completion: nil)
    }
    
}
