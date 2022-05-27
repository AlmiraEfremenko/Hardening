//
//  TabBarController.swift
//  Hardening
//
//  Created by MAC on 19.05.2022.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    var coordinator: TabBarCoordinator?

    override func viewDidLoad() {
        self.tabBar.tintColor = UIColor(red: 246.0/255.0, green: 88.0/150.0, blue: 40.0/255.0, alpha: 1.0)
    }
}
