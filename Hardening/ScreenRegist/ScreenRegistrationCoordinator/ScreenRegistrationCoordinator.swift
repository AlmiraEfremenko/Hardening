//
//  ScreenRegistrationCoordinator.swift
//  Hardening
//
//  Created by MAC on 27.04.2022.
//

import Foundation
import UIKit

protocol OpenScreenGreetings {
    func openScreenGreetings()
}

class ScreenRegistrationCoordinator: Coordinator, OpenScreenGreetings {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let screenRegistrationViewController = ScreenRegistrationViewController()
        screenRegistrationViewController.coordinator = self
        navigationController.pushViewController(screenRegistrationViewController, animated: false)
    }
    
    func openScreenGreetings() {
        let screenGreetingsCoordinator = ScreenGreetingsCoordinator(navigationController: navigationController)
        screenGreetingsCoordinator.start()
    }
}
