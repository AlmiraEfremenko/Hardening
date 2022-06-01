//
//  ThirdStageMarkCoordinator.swift
//  Hardening
//
//  Created by MAC on 31.05.2022.
//

import UIKit

class ThirdStageMarkCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let thirdStageMarkController = ThirdStageMarkController()
        thirdStageMarkController.coordinator = self
        navigationController.pushViewController(thirdStageMarkController, animated: false)
    }
}
