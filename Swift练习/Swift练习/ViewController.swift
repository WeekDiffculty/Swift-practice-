//
//  ViewController.swift
//  Swift练习
//
//  Created by qingyun on 16/9/18.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {
        override func viewDidLoad() {
        super.viewDidLoad()
            //内部控制方法 声明方法

            //添加子控制器
            addChildViewController(HomeViewController(), title: "首页", imageName: "tabbar_home_selected")
            addChildViewController(Massege(), title: "信息", imageName: "tabbar_message_center_selected")
            
            addChildViewController(DiscoverViewController(), title: "发现", imageName: "tabbar_discover_selected")
            addChildViewController(ProfileViewController(), title: "个人", imageName: "tabbar_profile_selected")
    }
    
    func addChildViewController(childController: UIViewController, title: String, imageName: String){
        // 1，添加子控制器不写该句，图片为蓝色默认，如果是在iOS8以前, 只有文字有效果, 而图片没有效果，而ios8设tintColor图片文字颜色都一样了，如果ios8前是设图片的渲染模型才能解决
        tabBar.tintColor = UIColor.orangeColor()
        
        //创建一个子控制器
        let VC = HomeViewController()
        //1. 设置控制器属性
        VC.title=title
        VC.tabBarItem.image=UIImage(named: imageName)
        //系统会由内向外的设置标题
        //1.3 给子控制器加导航控制器
        let nav = UINavigationController(rootViewController: VC)
        //添加
        addChildViewController(nav)
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

