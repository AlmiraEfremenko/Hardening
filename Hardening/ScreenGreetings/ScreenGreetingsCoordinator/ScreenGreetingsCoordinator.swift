//
//  ScreenGreetingsCoordinator.swift
//  Hardening
//
//  Created by MAC on 10.05.2022.
//

import UIKit

protocol OpenScreenStageHardening {
    func openScreenStageHardening()
}

class ScreenGreetingsCoordinator: Coordinator, OpenScreenStageHardening {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let openScreenGreetingsViewController = ScreenGreetingsViewController()
        openScreenGreetingsViewController.coordinator = self
        navigationController.pushViewController(openScreenGreetingsViewController, animated: false)
    }
    
    func openScreenStageHardening() {
        let screenStageHardeningCoordinator = ScreenStageHardeningCoordinator(navigationController: navigationController)
        screenStageHardeningCoordinator.start()
    }
}
