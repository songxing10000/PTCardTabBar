//
//  Nav.swift
//  PTCardTabBar_Example
//
//  Created by dfpo on 2022/12/15.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit
import PTCardTabBar

class Nav: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
}
extension Nav: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        guard let tab = tabBarController as? PTCardTabBarController else {
            return
        }
        // 始终隐藏系统的tabbar
        tab.tabBar.isHidden = true
        // 隐藏customTabBar方式1
        tab.customTabBar.isHidden = viewControllers.count > 1
        // 隐藏customTabBar方式2
        //tab.setTabBarHidden(viewControllers.count > 1, animated: true)
    }
}
