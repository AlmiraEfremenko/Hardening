//
//  ScreenGreetingsController.swift
//  Hardening
//
//  Created by MAC on 10.05.2022.
//

import UIKit

class ScreenGreetingsViewController: UIViewController {
    
    private var screenGreetingsView: ScreenGreetingsView? {
        guard isViewLoaded else { return nil }
        return view as? ScreenGreetingsView
    }
    
    var coordinator: ScreenGreetingsCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view = ScreenGreetingsView()
        screenGreetingsView?.followScreenStageHardening = { [weak self] in
            self?.coordinator?.openScreenStageHardening()
        }
    }
}
