//
//  UIAlertController+Ext.swift
//  Test
//
//  Created by Oleksii on 11/30/18.
//  Copyright © 2018 Temabit. All rights reserved.
//

import Foundation
import UIKit

public extension UIAlertController {
    
    
    /// Show UIAlertController on separate UIWindow
    public func show() {
        let win = UIWindow(frame: UIScreen.main.bounds)
        let vc = UIViewController()
        vc.view.backgroundColor = .clear
        win.rootViewController = vc
        win.windowLevel = UIWindow.Level.alert + 1
        win.makeKeyAndVisible()
        vc.present(self, animated: true, completion: nil)
    }
}
