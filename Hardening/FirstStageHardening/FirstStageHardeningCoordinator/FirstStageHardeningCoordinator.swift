//
//  FirstStageHardeningCoordinator.swift
//  Hardening
//
//  Created by MAC on 16.05.2022.
//

import Foundation
import UIKit

class FirstStageHardeningCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstStageHardeningCoordinator = FirstStageHardeningController()
        firstStageHardeningCoordinator.coordinator = self
        navigationController.pushViewController(firstStageHardeningCoordinator, animated: false)
    }
}
