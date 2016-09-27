//
//  DiscoverViewController.swift
//  Swift练习
//
//  Created by qingyun on 16/9/18.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit
import Alamofire
class DiscoverViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    
    lazy var arrayData:[AnyObject]={
    return [AnyObject]()
    }()
    
    
    override func viewDidLoad() {
        var tableView:UITableView
        //var arrayData:NSArray
        super.viewDidLoad()
        view.backgroundColor=UIColor.greenColor()
        tableView=UITableView(frame: CGRectMake(0, 0, view.frame.width, view.frame.width))
        view.addSubview(tableView)
        tableView.delegate=self
        tableView.dataSource=self
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
