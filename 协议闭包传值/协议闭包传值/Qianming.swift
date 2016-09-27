//
//  Qianming.swift
//  协议闭包传值
//
//  Created by qingyun on 16/9/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit

class Qianming: UIViewController {
    @IBOutlet weak var qianmingTextField: UITextField!
    var SignName:String?
    var delegate:ChangeSignName?
    var changeValueSign:((String)->())?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.qianmingTextField.text=SignName
    
    }
    
    @IBAction func back(sender: UIButton) {
self.dismissViewControllerAnimated(true) { 
    [unowned self]() ->Void in
   // self.delegate!.changeValue(self.qianmingTextField.text!)//协议传旨
    
    if self.delegate != nil{
        self.delegate!.changeValue(self.qianmingTextField.text!)
    }
    }
    
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
