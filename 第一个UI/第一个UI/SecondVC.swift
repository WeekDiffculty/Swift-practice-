//
//  SecondVC.swift
//  第一个UI
//
//  Created by qingyun on 16/9/22.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit
class SecondVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.whiteColor()
        let btn = UIButton(frame:CGRectMake(100,100,100,100))
        btn.backgroundColor=UIColor.redColor()
        btn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        btn.setTitle("回去", forState: .Normal)
        btn.addTarget(self, action: #selector(back), forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
    }
    func back(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
