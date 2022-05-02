//
//  ScreenRegistrationCoordinator.swift
//  Hardening
//
//  Created by MAC on 27.04.2022.
//

import Foundation
import UIKit

class ScreenRegistrationCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let screenRegistrationViewController = ScreenRegistrationViewController()
        screenRegistrationViewController.coordinator = self
        navigationController.pushViewController(screenRegistrationViewController, animated: false)
    }
}
