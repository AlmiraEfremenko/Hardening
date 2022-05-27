//
//  ScreenStageHardeningCoordinator.swift
//  Hardening
//
//  Created by MAC on 11.05.2022.
//

import UIKit

protocol OpenStageHardening {
    func openTapBar()
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
    
    func openTapBar() {
        let tabBarCoordinator = TabBarCoordinator(navigationController: navigationController)
        tabBarCoordinator.start()
    }
}
