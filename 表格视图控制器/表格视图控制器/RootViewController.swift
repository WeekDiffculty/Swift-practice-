//
//  RootViewController.swift
//  表格视图控制器
//
//  Created by qingyun on 16/9/23.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit

class RootViewController: UITableViewController {
    var dataArr=NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        for i in 0 ..< 10 {
            dataArr.addObject(i)
        }
        //注册单元格
        //OC [类名 class] ==swift 类名.self
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        let rightItem=UIBarButtonItem(title: "编辑",style: .Plain,target: self,action: #selector(edit))
        //导航条添加按钮
        navigationItem.rightBarButtonItem=rightItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArr.count
    }
    
    //编辑按钮事件的响应方法
    func edit(barBtnItem:UIBarButtonItem){
        if barBtnItem.title=="编辑" {
            barBtnItem.title="完成"
            tableView.setEditing(true, animated: true)
        }else{
            barBtnItem.title="编辑"
            tableView.setEditing(false, animated: true)
        }
        
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        let str=dataArr[indexPath.row]
        // Configure the cell...
        cell.textLabel?.text="\(indexPath.row)\(str)"
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "分区\(section)"
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        if indexPath.row%2==0 {
            return .Delete
        }else{
            return .Insert
        }
    }
    
   
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {//删除
        if editingStyle == .Delete {
            // Delete the row from the data source
        dataArr.removeObjectAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {//添加
            dataArr.insertObject("新增行", atIndex: indexPath.row)
            tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }    
    }
   

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
