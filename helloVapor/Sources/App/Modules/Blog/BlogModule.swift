//
//  File.swift
//  
//
//  Created by 张奇 on 2020/6/22.
//

import Vapor
import Fluent

struct BlogModule: Module {
    var router: RouteCollection? {
        BlogRouter()
    }
    var migrations: [Migration] {
        [BlogMigration_v1_0_0(), ]
    }
}
