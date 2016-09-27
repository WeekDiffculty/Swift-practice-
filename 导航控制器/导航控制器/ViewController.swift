//
//  ViewController.swift
//  导航控制器
//
//  Created by qingyun on 16/9/22.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor=UIColor.whiteColor()
        let leftItem=UIBarButtonItem(title: "下一页",style:.Plain,target: self,action: #selector(gotoSecond))
        navigationItem.leftBarButtonItem=leftItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func gotoSecond(){
      self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }

}

