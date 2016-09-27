//
//  ViewController.swift
//  UDP套接字
//
//  Created by qingyun on 16/9/24.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit
import CocoaAsyncSocket
class ViewController: UIViewController,GCDAsyncUdpSocketDelegate {
    @IBOutlet weak var IP: UITextField!

    @IBOutlet weak var port: UITextField!
    @IBOutlet weak var message: UITextField!
    @IBOutlet weak var content: UITextView!
    
     //GCDAsyncUdpSocket udp的套接字
    var asyncSocket=GCDAsyncUdpSocket()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //初始化udp socket
        asyncSocket=GCDAsyncUdpSocket(delegate: self,delegateQueue: dispatch_get_main_queue())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//发送消息
    @IBAction func send(sender: AnyObject) {
        let ip = IP.text
        let portt = UInt16(port.text!)
        let data = message.text!.dataUsingEncoding(NSUTF8StringEncoding)
        asyncSocket.sendData(data!, toHost: ip!, port:portt!, withTimeout: -1, tag: 1)
        
        do {
            //开始接受从服务器接收的
            try asyncSocket.beginReceiving()
        }catch{
            print("\(error)")
        }
    }
    
    func showMsg(str:String){
        content.text = "\n\(str)"
    }
    
    //清理
    @IBAction func clear(sender: AnyObject) {
        content.text=""
    }
    
    // MARK delegate
    
    func udpSocket(sock: GCDAsyncUdpSocket, didSendDataWithTag tag: Int) {
        print("发送成功")
    }
    
    func udpSocket(sock: GCDAsyncUdpSocket, didReceiveData data: NSData, fromAddress address: NSData, withFilterContext filterContext: AnyObject?) {
        print("接收到数据")
        let str = String(data: data,encoding: NSUTF8StringEncoding)
        if str != nil {
            showMsg(str!)
        }
        
    }

}

