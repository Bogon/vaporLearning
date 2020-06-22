//
//  File.swift
//  
//
//  Created by 张奇 on 2020/6/22.
//

import Foundation

extension DateFormatter {
    static var year: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "y"
        return formatter
    }()
}
