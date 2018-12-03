//
//  UILabel+Ext.swift
//  Test
//
//  Created by Oleksii on 12/3/18.
//  Copyright © 2018 Temabit. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    /// UILabel for default Title
    static func initForTitle() -> UILabel {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 18)
        label.textColor = .darkGray
        label.numberOfLines = 1
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        return label
    }
    
    /// UILabel for default Description
    static func initForDescription() -> UILabel {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textColor = .black
        label.numberOfLines = 2
        return label
    }
}
