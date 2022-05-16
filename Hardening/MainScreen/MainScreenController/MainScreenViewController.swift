//
//  ViewController.swift
//  Hardening
//
//  Created by MAC on 17.04.2022.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    private var mainScreenView: MainScreenView? {
        guard isViewLoaded else { return nil }
        return view as? MainScreenView
    }
    
    var coordinator: OpenScreenRegistration?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = MainScreenView()
        mainScreenView?.registrationAction = { [weak self] in
            self?.coordinator?.openScreenRegistration()}
    }
}
