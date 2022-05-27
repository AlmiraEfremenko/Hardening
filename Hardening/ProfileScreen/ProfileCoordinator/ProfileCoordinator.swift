//
//  ProfileCoordinator.swift
//  Hardening
//
//  Created by MAC on 21.05.2022.
//

import UIKit

class ProfileCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let profileController = ProfileController()
        profileController.coordinator = self
        navigationController.pushViewController(profileController, animated: true)
    }
}
