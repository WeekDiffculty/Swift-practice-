//
//  storyModel.swift
//  网络
//
//  Created by qingyun on 16/9/24.
//  Copyright © 2016年 qingyun. All rights reserved.
//

import UIKit
import ObjectMapper
class storyModel: Mappable {
    var image:String!
    var type:Int!
    var id:Int!
    var ga_prefix:String!
    var title:String!
    
    //初始化
    required init?(_ map: Map) {
        
    }
    //解析字段
    func mapping(map: Map) {
       image <- map["image"]
        type <- map["type"]
        id <- map["id"]
        ga_prefix <- map["ga_prefix"]
        title <- map["title"]
    }
}
