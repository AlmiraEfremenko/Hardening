//
//  ViewController.swift
//  Hardening
//
//  Created by MAC on 17.04.2022.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    var coordinator: MainScreenCoordinator?
    
    var mainScreenView = MainScreenView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = mainScreenView as? UIView
    }


}

