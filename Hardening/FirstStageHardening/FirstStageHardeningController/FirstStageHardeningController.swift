//
//  FirstStageHardeningController.swift
//  Hardening
//
//  Created by MAC on 16.05.2022.
//

import Foundation
import UIKit

class FirstStageHardeningController: UIViewController {
    
    private var firstStageHardeningView: FirstStageHardeningView? {
        guard isViewLoaded else { return nil }
        return view as? FirstStageHardeningView
    }

   var coordinator: FirstStageHardeningCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view = FirstStageHardeningView()
        tapStartMarkHardening()
    }
    
    private func tapStartMarkHardening() {
        firstStageHardeningView?.openFirstStageMark = { [weak self] in
            self?.coordinator?.openStageMark()
        }
    }
}
