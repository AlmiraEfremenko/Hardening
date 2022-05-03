//
//  ScreenLogInCoordinator.swift
//  Hardening
//
//  Created by MAC on 30.04.2022.
//

import Foundation
import UIKit

class ScreenLogInCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let screenLogInViewController = ScreenLogInViewController()
        screenLogInViewController.coordinator = self
        navigationController.pushViewController(screenLogInViewController, animated: false)
    }
}

