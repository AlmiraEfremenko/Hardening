//
//  ScreenGreetingsCoordinator.swift
//  Hardening
//
//  Created by MAC on 10.05.2022.
//

import UIKit

class ScreenGreetingsCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let openScreenGreetingsViewController = ScreenGreetingsViewController()
        openScreenGreetingsViewController.coordinator = self
        navigationController.pushViewController(openScreenGreetingsViewController, animated: false)
    }
}
