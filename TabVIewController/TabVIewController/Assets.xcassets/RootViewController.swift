//
//  RootViewController.swift
//  TabVIewController
//
//  Created by qingyun on 16/9/22.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit

class RootViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var tableView:UITableView!//表格视图对象
    var dataArr = NSMutableArray()//表格填充的数据
    override func viewDidLoad() {
        super.viewDidLoad()
self.view.backgroundColor=UIColor.whiteColor()
        //数组赋值
        for i in 0 ..< 10 {
            dataArr.addObject(i)
        }
        //表格对象初始化
        tableView=UITableView(frame: CGRectMake(0, 0, view.frame.size.width, view.frame.size.height))
        tableView.delegate=self
        tableView.dataSource=self
        self.view .addSubview(tableView)
        // Do any additional setup after loading the view.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4
    }
    
    //row
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    //cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifile="cellidentifile"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifile)
        if cell==nil {
            cell=UITableViewCell(style:.Default, reuseIdentifier: cellIdentifile)
        }
        let data = dataArr[indexPath.row]
        cell?.textLabel?.text="第\(data.stringValue)行"
        return cell!
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK delegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("选中\(indexPath.section)分区，\(indexPath.row)行")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
