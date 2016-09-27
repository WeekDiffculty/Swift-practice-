//
//  AppDelegate.swift
//  分栏控制器
//
//  Created by qingyun on 16/9/22.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate,UITabBarControllerDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        //创建时图控制器
        let fist = FistVC()
        let second = SecondVC()
        let third = ThirdVC()
        //导航控制器
        let Navc1=UINavigationController(rootViewController:fist)
        let navc2 = UINavigationController(rootViewController:second)
        let navc3=UINavigationController(rootViewController:third)
        //3 分栏控制器
        let tabBarVC=UITabBarController()
        Navc1.tabBarItem=UITabBarItem(title: "时图1",image: nil,tag: 1)
        navc2.tabBarItem=UITabBarItem(title: "视图2",image: nil,tag: 2)
        navc3.tabBarItem=UITabBarItem(title: "视图3",image: nil,tag: 3)
        
        tabBarVC.viewControllers=[Navc1,navc2,navc3]
        tabBarVC.delegate=self
        window?.rootViewController=tabBarVC
        return true
    }
    //选中某选项卡时调用
    func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        print("分栏控制器当前已选中\(tabBarController.selectedIndex))")
        print("tag : \(viewController.tabBarItem.tag)")
    }

    func applicationWillResignActive(application: UIApplication) {

    }

    func applicationDidEnterBackground(application: UIApplication) {
       
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

