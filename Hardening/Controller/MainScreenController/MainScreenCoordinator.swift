//
//  MainScreenCoordinator.swift
//  Hardening
//
//  Created by MAC on 25.04.2022.
//

import Foundation
import UIKit

protocol OpenScreenRegistration {
    func openScreenRegistration()
}

class MainScreenCoordinator: Coordinator, OpenScreenRegistration {
   
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let mainScreenViewController = MainScreenViewController()
        mainScreenViewController.coordinator = self
        navigationController.pushViewController(mainScreenViewController, animated: false)
    }
    
    func openScreenRegistration() {
        let screenRegistrationCoordinator = ScreenRegistrationCoordinator(navigationController: navigationController)
        screenRegistrationCoordinator.start()
    }
}
