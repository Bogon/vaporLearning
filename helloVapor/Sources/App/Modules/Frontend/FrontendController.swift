//
//  File.swift
//  
//
//  Created by 张奇 on 2020/6/22.
//

import Vapor

struct FrontendController {

     func homeView(req: Request) throws -> EventLoopFuture<View> {
        struct Context: Encodable {
            let title: String
            let header: String
            let message: String
        }
      
        
        let context = Context(title: "Char's Blog - 首页",
        header: "大家好,",
        message: "欢迎大家访问我的博客!")
        
        return req.view.render("home", context)
    }
}
