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
        let window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = UIViewController()
        viewController.view.backgroundColor = .clear
        window.rootViewController = viewController
        window.windowLevel = UIWindow.Level.alert + 1
        window.makeKeyAndVisible()
        viewController.present(self, animated: true, completion: nil)
    }
}
