//
//  AppCoordinator.swift
//  Hardening
//
//  Created by MAC on 25.04.2022.
//

import Foundation
import UIKit

// AppCoordinator реализует протокол Coordinator


class AppCoordinator: Coordinator {
    
    let window: UIWindow
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        window.backgroundColor = .white
        let startCoordinator = MainScreenCoordinator(navigationController: navigationController)
        startCoordinator.start()
    }
}
