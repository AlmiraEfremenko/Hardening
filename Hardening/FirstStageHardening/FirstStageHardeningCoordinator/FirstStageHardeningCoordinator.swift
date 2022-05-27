//
//  FirstStageHardeningCoordinator.swift
//  Hardening
//
//  Created by MAC on 16.05.2022.
//

import Foundation
import UIKit

protocol OpenStageMark {
    func openStageMark()
}

class FirstStageHardeningCoordinator: Coordinator, OpenStageMark {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstStageHardeningController = FirstStageHardeningController()
        firstStageHardeningController.coordinator = self
        navigationController.pushViewController(firstStageHardeningController, animated: true)
    }
    
    func openStageMark() {
        
        let firstStageMarkCoordinator = FirstStageMarkCoordinator(navigationController: navigationController)
        firstStageMarkCoordinator.start()
    }
}
