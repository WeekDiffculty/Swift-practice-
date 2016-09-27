//
//  ViewController.swift
//  OC Swift 混编
//
//  Created by qingyun on 16/9/22.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      let   objc = OCClass()
        
        objc.creadSwiftInstance()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

