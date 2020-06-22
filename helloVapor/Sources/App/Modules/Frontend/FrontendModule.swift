//
//  File.swift
//  
//
//  Created by 张奇 on 2020/6/22.
//

import Vapor
import Fluent

struct FrontendModule: Module {
    var router: RouteCollection? {
        FrontendRouter()
    }
}
