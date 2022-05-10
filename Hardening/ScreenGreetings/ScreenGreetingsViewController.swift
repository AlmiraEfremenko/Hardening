//
//  ScreenGreetingsController.swift
//  Hardening
//
//  Created by MAC on 10.05.2022.
//

import UIKit

class ScreenGreetingsViewController: UIViewController {
    
    private var mainScreenView: ScreenGreetingsView? {
        guard isViewLoaded else { return nil }
        return view as? ScreenGreetingsView
    }
    
    var coordinator: ScreenGreetingsCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.leftBarButtonItem?.title = "Пропустить"
    }
}
