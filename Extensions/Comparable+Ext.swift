//
//  Comparable+Ext.swift
//
//  Created by Oleksii Mykhailenko on 10/1/19.
//  Copyright © 2018 Oleksii Mykhailenko. All rights reserved.
//

extension Comparable {
    
    /// Normolize value to the range
    ///
    /// - Parameter range: ClosedRange (Ex. 0...100)
    /// - Returns: return value if it entered into the range or return min or max value of the range
    func normolized(to range: ClosedRange<Self>) -> Self {
        let min = range.lowerBound, max = range.upperBound
        return self < min ? min : (max < self ? max : self)
    }
}
