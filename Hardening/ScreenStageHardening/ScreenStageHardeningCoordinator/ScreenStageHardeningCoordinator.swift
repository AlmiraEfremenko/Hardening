//
//  ScreenStageHardeningCoordinator.swift
//  Hardening
//
//  Created by MAC on 11.05.2022.
//

import UIKit

protocol OpenStageHardening {
    func openStageFirstHardening()
}

class ScreenStageHardeningCoordinator: Coordinator, OpenStageHardening {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let openScreenStageHardeningController = ScreenStageHardeningController()
        openScreenStageHardeningController.coordinator = self
        navigationController.pushViewController(openScreenStageHardeningController, animated: false)
    }
    
    func openStageFirstHardening() {
        let firstStageHardeningCoordinator = FirstStageHardeningCoordinator(navigationController: navigationController)
        firstStageHardeningCoordinator.start()
    }
}
