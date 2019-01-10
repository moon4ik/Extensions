//
//  UIView+Ext.swift
//
//  Created by Oleksii Mykhailenko on 12/3/18.
//  Copyright © 2018 Oleksii Mykhailenko. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    /// Corner radius on Storyboards
    @IBInspectable
    var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set { layer.cornerRadius = newValue }
    }
    
    /// Add several subviews
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach(addSubview)
    }
}
