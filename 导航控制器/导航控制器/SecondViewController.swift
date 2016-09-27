//
//  SecondViewController.swift
//  导航控制器
//
//  Created by qingyun on 16/9/22.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit

class SecondViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title="第二页"
        navigationItem.hidesBackButton=true//隐藏导航条的返回按钮
        
        let btn=UIBarButtonItem(barButtonSystemItem:.Action,target: self,action: #selector(back))
        navigationItem.leftBarButtonItem=btn
         
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func back(){
    navigationController?.popViewControllerAnimated(true)
    }

}
