//
//  ViewController.swift
//  网络
//
//  Created by qingyun on 16/9/23.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper
//宏定义
let url="http://news-at.zhihu.com/api/4/news/latest"
let downloadUrl="http://img.hb.aicdn.com/62211cf8b3260ed72213345fe04e568a582a90f5185cc-sz1kEd_fw580"
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.requestService_ger()
        //self.DownloadFile()
        //self.downW()
    }
//请求
    func requestService_ger(){
        Alamofire.request(.GET, url).responseString(completionHandler: {
            (Response) in
            switch (Response.result) {
            case .Success(let values):
                print("\(values)")
                //转换模型
                let news=Mapper<newsModel>().map(values)
                print("\(news?.data)")
                print("story的个数\(news?.storis.count)")
                //从数组中获取每个元素
                for story in (news?.storis)!{
                    print("id \(story.id) image \(story.image) title \(story.title)")
                }
                break
            case .Failure(let error):
                print("\(error.description)")
                break
            }
        })
    }
    //下载文件
    func DownloadFile(){
        Alamofire.download(.GET,downloadUrl){
            (temporaryUrl,response)->NSURL in
            //返回文件返回路径
            let fileManager = NSFileManager.defaultManager()
            let documentpath = fileManager.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first
            let pathComplent = response.suggestedFilename
            print(pathComplent)
        
            print(documentpath?.URLByAppendingPathComponent(pathComplent!))
            ;
            return (documentpath?.URLByAppendingPathComponent(pathComplent!))!
        }
    }
    
    //下载文件2 自定义存储目录
    func downW(){
        Alamofire.download(.GET,downloadUrl){
            (temorayurl,response) -> NSURL in
            let fileManager=NSFileManager.defaultManager()
            let directryUrl=fileManager.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first//获取沙盒目录
            //判断子目录是否存在
            let folder=directryUrl?.URLByAppendingPathComponent("image", isDirectory: true)
            let isFlder=fileManager.fileExistsAtPath((folder?.path)!)
            if isFlder{
                //创建目录
                try! fileManager.createDirectoryAtURL(folder!, withIntermediateDirectories: true, attributes: nil)
                print("新建目录")
            }
            print(folder)
            return (folder?.URLByAppendingPathComponent("image", isDirectory: true))!
        }
    }
    //下载进度
    func downloadFileWithProgress(){
        let destination=Alamofire.Request.suggestedDownloadDestination(directory:.DocumentDirectory,domain:.UserDomainMask)
        let downloadRequest:Request=Alamofire.download(.GET,downloadUrl,destination:destination).progress{//正在下载时
            (bytesRead,totalBytesRead,totalBytesExpectedToRead) in
            let percent=totalBytesRead*100/totalBytesExpectedToRead
            print("已下载:\(totalBytesRead) 当前进度 :\(percent) %")

            }.response{
                //下载结束
                (request,response,_,error)in
                print(response)
        }
        //取消下载
        downloadRequest.cancel()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

