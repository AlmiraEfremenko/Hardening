//
//  ScreenStageHardeningController.swift
//  Hardening
//
//  Created by MAC on 11.05.2022.
//

import UIKit

class ScreenStageHardeningController: UIViewController {
    
    private var screenStageHardeningView: ScreenStageHardeningView? {
        guard isViewLoaded else { return nil }
        return view as? ScreenStageHardeningView
    }
    
    var coordinator: ScreenStageHardeningCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        self.view = ScreenStageHardeningView()
        openTabBarHardening()
        navigationController?.navigationBar.isHidden = true
    }
    
    private func openTabBarHardening() {
        self.screenStageHardeningView?.openTabBarHardening = { [weak self] in
            self?.coordinator?.openTapBar()
        }
    }
}
