//
//  File.swift
//  
//
//  Created by 张奇 on 2020/6/22.
//

import Vapor

struct FrontendRouter: RouteCollection {
    
    let controller = FrontendController()
    func boot(routes: RoutesBuilder) throws {
        routes.get(use: self.controller.homeView)
    }
}
