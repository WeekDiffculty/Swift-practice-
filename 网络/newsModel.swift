//
//  newsModel.swift
//  网络
//
//  Created by qingyun on 16/9/24.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit
import ObjectMapper
class newsModel: Mappable  {
    var data:String!
    var storis:[storyModel]!
    //初始化
    required init?(_ map: Map) {
        
    }
    func mapping(map: Map) {
        data <- map["data"]
        storis <- map["stories"]
    }
}
