//
//  ScreenLogInViewController.swift
//  Hardening
//
//  Created by MAC on 30.04.2022.
//

import UIKit

class ScreenLogInViewController: UIViewController {
    
    private var screenLogInView: ScreenLogInView? {
        guard isViewLoaded else { return nil }
        return view as? ScreenLogInView
    }

   var coordinator: ScreenLogInCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view = ScreenLogInView()
    }
}
