//
//  UINavigationController+Ext.swift
//  Test
//
//  Created by Oleksii on 12/3/18.
//  Copyright © 2018 Temabit. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .default
    }
}
