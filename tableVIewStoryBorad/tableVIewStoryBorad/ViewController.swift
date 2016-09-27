//
//  ViewController.swift
//  tableVIewStoryBorad
//
//  Created by qingyun on 16/9/23.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var dataArray=[String]()
    
    @IBOutlet weak var TableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for i in 0 ... 10{
            dataArray.append("第\(i)行")
        }
        //注：在storyBoard 使用cell，不需要在代码注册cell
        TableView.delegate=self
        TableView.dataSource=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cellId:String
        if indexPath.row % 2==0 {
            cellId = "cell1"
        }else{
            cellId = "cell2"
        }
        let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath)
        if indexPath.row % 2 == 0 {
            let cel1 = cell as! cell1
            let strInfo = "\(dataArray[indexPath.row])"+"我是cell1"
            cel1.textLabel?.text=strInfo
            return cel1
        }else{
            let cel2 = cell as! cell2
            let strINfo = "\(dataArray[indexPath.row])"+"我是cell2"
            cel2.textLabel?.text=strINfo
            return cel2
        }
    
    }
}

