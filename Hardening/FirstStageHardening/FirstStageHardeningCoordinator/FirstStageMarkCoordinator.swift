//
//  FirstStageMarkCoordinator.swift
//  Hardening
//
//  Created by MAC on 20.05.2022.
//

import UIKit

class FirstStageMarkCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstStageMarkController = FirstStageMarkController()
        firstStageMarkController.coordinator = self
        
        navigationController.pushViewController(firstStageMarkController, animated: false)
        
    }
}
