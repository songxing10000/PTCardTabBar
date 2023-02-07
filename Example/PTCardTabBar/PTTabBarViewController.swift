//
//  PTTabBarViewController.swift
//  PTCardTabBar_Example
//
//  Created by Selwan IOS on 9/11/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import PTCardTabBar

class PTTabBarViewController: PTCardTabBarController {

    override func viewDidLoad() {
        let vc1 = LabelViewController(title: "Home")
        vc1.view.backgroundColor = .red
        let nav1 = Nav(rootViewController: vc1)
        let vc2 =  LabelViewController(title: "Calendar")
        let nav2 = Nav(rootViewController: vc2)

        let vc3 = LabelViewController(title: "More")
        let nav3 = Nav(rootViewController: vc3)

        vc1.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "home"), tag: 1)
        vc2.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "calendar"), tag: 2)
        vc3.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "more"), tag: 3)
        
        self.viewControllers = [nav1, nav2, nav3]
        
        super.viewDidLoad()
    } 
}
