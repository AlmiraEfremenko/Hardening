//
//  ThirdStageHardeningCoordinator.swift
//  Hardening
//
//  Created by MAC on 31.05.2022.
//

import UIKit

protocol OpenThirdStageMark {
    func openThirdStageMark()
}

class ThirdStageHardeningCoordinator: Coordinator, OpenThirdStageMark {
   
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let thirdStageHardeningController = ThirdStageHardeningController()
        thirdStageHardeningController.coordinator = self
        navigationController.pushViewController(thirdStageHardeningController, animated: false)
    }
    
    func openThirdStageMark() {
        let thirdStageMarkCoordinator = ThirdStageMarkCoordinator(navigationController: navigationController)
        thirdStageMarkCoordinator.start()
    }
}
