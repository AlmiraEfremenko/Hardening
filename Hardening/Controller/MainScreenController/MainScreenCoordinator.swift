//
//  MainScreenCoordinator.swift
//  Hardening
//
//  Created by MAC on 25.04.2022.
//

import Foundation
import UIKit

class MainScreenCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let mainScreenViewController = MainScreenViewController()
        mainScreenViewController.coordinator = self
        navigationController?.pushViewController(mainScreenViewController, animated: true)
        
    }
    
    
 
    
}
