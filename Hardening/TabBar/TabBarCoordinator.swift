//
//  TabBarCoordinator.swift
//  Hardening
//
//  Created by MAC on 19.05.2022.
//

import UIKit

class TabBarCoordinator: Coordinator {
    
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let tabBarController = TabBarController()
        tabBarController.coordinator = self
        let homeNavigationController = UINavigationController()
        homeNavigationController.tabBarItem = UITabBarItem(title: "Главная", image: UIImage(systemName: "house.fill"), tag: 0)
        let homeCoordinator = FirstStageHardeningCoordinator(navigationController: homeNavigationController)
        
        let awardsNavigationController = UINavigationController()
        awardsNavigationController.tabBarItem = UITabBarItem(title: "Награды", image: UIImage(systemName: "snow"), tag: 1)
        let awardsCoordinator = AwardsCoordinator(navigationController: awardsNavigationController)

        let profileNavigationController = UINavigationController()
        profileNavigationController.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person.fill"), tag: 2)
        let profileCoordinator = ProfileCoordinator(navigationController: profileNavigationController)
        
        tabBarController.setViewControllers([homeNavigationController, awardsNavigationController, profileNavigationController], animated: false)
       
        navigationController.pushViewController(tabBarController, animated: false)
        
        homeCoordinator.start()
        awardsCoordinator.start()
        profileCoordinator.start()
    }
}
