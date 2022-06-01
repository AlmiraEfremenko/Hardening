//
//  FirstStageMarkCoordinator.swift
//  Hardening
//
//  Created by MAC on 20.05.2022.
//

import UIKit

protocol OpenSecondStage {
    func openSecondStage()
}

class FirstStageMarkCoordinator: Coordinator, OpenSecondStage {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstStageMarkController = FirstStageMarkController()
        firstStageMarkController.coordinator = self
        navigationController.pushViewController(firstStageMarkController, animated: false)
    }
    
    func openSecondStage() {
        let secondStageCoordinator = ThirdStageHardeningCoordinator(navigationController: navigationController)
        secondStageCoordinator.start()
    }
}
