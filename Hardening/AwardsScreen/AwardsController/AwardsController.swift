//
//  AwardsController.swift
//  Hardening
//
//  Created by MAC on 23.05.2022.
//

import Foundation
import UIKit

protocol AwardsDelegate: class {
    func addAwards()
}

class AwardsController: UIViewController, AwardsDelegate {
    
    var count = 0
    
    var awardsView: AwardsView? {
        guard isViewLoaded else { return nil }
        return view as? AwardsView
    }
    
    var coordinator: AwardsCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = AwardsView()
    }
    
    func addAwards() {
        count += 1
        awardsView?.labelCounterOneStage.text = "\(count)"
    }
}
