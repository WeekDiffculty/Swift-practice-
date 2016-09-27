//
//  ViewController.swift
//  协议闭包传值
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ChangeSignName {

    @IBOutlet weak var gexingqianming: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func changeGexingqianming(sender: UIButton) {
        let sb=UIStoryboard(name: "Main",bundle: nil)
        
        let qianming = sb .instantiateViewControllerWithIdentifier("qianming") as! Qianming
        qianming.SignName=gexingqianming.text
        qianming.delegate = self
//        //闭包传值
//        qianming.changeValueSign={
//            self.gexingqianming.text=$0
//        }
        self.presentViewController(qianming, animated: true, completion: nil)
        
    }
    //协议方法的实现
    func changeValue(signName:String){
        print("协议中的方法")
        gexingqianming.text=signName
    }
    
}

