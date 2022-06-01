//
//  ThirdStageHardeningController.swift
//  Hardening
//
//  Created by MAC on 31.05.2022.
//

import UIKit

class ThirdStageHardeningController: UIViewController {
    
    private var thirdStageHardeningView: ThirdStageHardeningView? {
        guard isViewLoaded else { return nil }
        return view as? ThirdStageHardeningView
    }
    
    var coordinator: ThirdStageHardeningCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        self.view = ThirdStageHardeningView()
        tapStartMarkHardening()
    }
    
    private func tapStartMarkHardening() {
        thirdStageHardeningView?.openThirdStageMark = { [weak self] in
            self?.coordinator?.openThirdStageMark()
        }
    }
}
