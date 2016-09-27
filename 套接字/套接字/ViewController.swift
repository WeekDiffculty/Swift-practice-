//
//  ViewController.swift
//  套接字
//
//  Created by qingyun on 16/9/24.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit
import CocoaAsyncSocket

//❤️跳包
let longConnectHearBeat = "jjjjj"
class ViewController: UIViewController,GCDAsyncSocketDelegate {

    @IBOutlet weak var IPip: UITextField!
    
    @IBOutlet weak var comm: UITextField!
    @IBOutlet weak var content: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var connect: UIButton!
    var asycnSocket:GCDAsyncSocket!//套接字对象
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //初始化套接字
    asycnSocket=GCDAsyncSocket(delegate: self,delegateQueue: dispatch_get_main_queue())
    }

    @IBAction func Clear(sender: AnyObject) {
        textView.text=""
    }
    @IBOutlet weak var clear: UIButton!
    @IBAction func send(sender: AnyObject) {
        let data=content.text?.dataUsingEncoding(NSUTF8StringEncoding)
        asycnSocket.writeData(data!, withTimeout: -1, tag: -1)
    }
    @IBAction func connect(sender: AnyObject) {
       let ip=IPip.text
        let port = UInt16(comm.text!)
        print("\(ip)  \(port)")
        
        let btn:UIButton = sender as! UIButton
        if btn.titleLabel?.text == "连接" {
            do{
                try  asycnSocket.connectToHost(ip!, onPort: port!)
            }catch{
                print("连接错误 \(error)")
            }
 
        }else{
            asycnSocket.disconnect()
            btn.titleLabel?.text="连接"
        }
        
        
    }
    
    
    func  sentHearBeatData(){
        let data = longConnectHearBeat.dataUsingEncoding(NSUTF8StringEncoding)//timeout 等待延迟 2秒 -1表示无延迟
        asycnSocket.writeData(data!, withTimeout: -1, tag: 2)
    }
    
    func showMsc(str:String){
        textView.text=str
    }
    
    // MARK delegate 
    func socket(sock: GCDAsyncSocket, didConnectToHost host: String, port: UInt16) {
        print("连接到主机")
        
        
    _ = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(sentHearBeatData), userInfo: nil, repeats: true)
        //发送💕
        
        //主动接收数据
        asycnSocket.readDataWithTimeout(-1, tag: 2)
        
        
    }
    
    //发送数据
    //tag 作用是区分套接字
    func  socket(sock: GCDAsyncSocket, didWriteDataWithTag tag: Int) {
        print("向服务器发送数据成功")
        
        connect.setTitle("断开连接", forState: .Normal)
        
    }
    
    func socket(sock: GCDAsyncSocket, didReadData data: NSData, withTag tag: Int) {
        print("收到服务器请求")
        let str=String(data: data,encoding: NSUTF8StringEncoding)
        showMsc(str!)
    }
    
    func socketDidDisconnect(sock: GCDAsyncSocket, withError err: NSError?) {
        print("断开连接")
        connect.setTitle("连接", forState: .Normal)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

