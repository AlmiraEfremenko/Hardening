//
//  ScreenRegistrationController.swift
//  Hardening
//
//  Created by MAC on 27.04.2022.
//

import UIKit

class ScreenRegistrationViewController: UIViewController {
    
    private var screenRegistrationView: ScreenRegistrationView? {
        guard isViewLoaded else { return nil }
        return view as? ScreenRegistrationView
    }

   var coordinator: ScreenRegistrationCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view = ScreenRegistrationView()
        screenRegistrationView?.finishRegistration = { [weak self] in
            self?.coordinator?.openScreenGreetings()
        }
        
        //screenRegistrationView?.safeData()
        print("Data save2")
    }
}
