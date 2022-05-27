//
//  AwardsCoordinator.swift
//  Hardening
//
//  Created by MAC on 23.05.2022.
//

import UIKit

class AwardsCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let awardsController = AwardsController()
        awardsController.coordinator = self
        navigationController.pushViewController(awardsController, animated: true)
    }
}
