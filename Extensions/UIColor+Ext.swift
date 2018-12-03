//
//  UIColor+Ext.swift
//  Test
//
//  Created by Oleksii on 12/3/18.
//  Copyright © 2018 Temabit. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    /// Init UIColor with Int values of RGB
    ///
    /// UIColor(r: 24, g: 75, b: 76, a: 1.0)
    ///
    /// - Parameters:
    ///   - r: Int
    ///   - g: Int
    ///   - b: Int
    ///   - a: CGFloat
    convenience init(r: Int, g: Int, b: Int, a: CGFloat = 1.0) {
        self.init(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: a)
    }
    
    /// Init UIColor with Int hex value
    ///
    /// UIColor(hex: 0x5fc7dc)
    ///
    /// - Parameter hex: Int
    convenience init(hex: Int) {
        self.init(r: (hex >> 16) & 0xff, g: (hex >> 8) & 0xff, b: hex & 0xff)
    }
    
    /// Init UIColor with String hex value
    ///
    /// UIColor(hexString: "#00F")
    /// UIColor(hexString: "#0000FF")
    /// UIColor(hexString: "#FF0000FF")
    ///
    /// - Parameter hexString: String
    convenience init?(hexString: String) {
        var chars = Array(hexString.hasPrefix("#") ? hexString.dropFirst() : hexString[...])
        let red, green, blue, alpha: CGFloat
        switch chars.count {
        case 3:
            chars = chars.flatMap { [$0, $0] }
            fallthrough
        case 6:
            chars = ["F","F"] + chars
            fallthrough
        case 8:
            alpha = CGFloat(strtoul(String(chars[0...1]), nil, 16)) / 255
            red   = CGFloat(strtoul(String(chars[2...3]), nil, 16)) / 255
            green = CGFloat(strtoul(String(chars[4...5]), nil, 16)) / 255
            blue  = CGFloat(strtoul(String(chars[6...7]), nil, 16)) / 255
        default:
            return nil
        }
        self.init(red: red, green: green, blue:  blue, alpha: alpha)
    }
    
}
