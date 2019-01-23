//
//  Date+Ext.swift
//
//  Created by Oleksii Mykhailenko on 1/23/19.
//  Copyright © 2018 Oleksii Mykhailenko. All rights reserved.
//

import Foundation

extension Date {
    
    var day: Int {
        return Calendar.current.component(.day, from: self)
    }
    
    var month: Int {
        return Calendar.current.component(.month, from: self)
    }
    
    var year: Int {
        return Calendar.current.component(.year, from: self)
    }
}
