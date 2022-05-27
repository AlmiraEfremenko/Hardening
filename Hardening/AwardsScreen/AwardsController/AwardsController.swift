//
//  AwardsController.swift
//  Hardening
//
//  Created by MAC on 23.05.2022.
//

import Foundation
import UIKit

class AwardsController: UIViewController {
    
    private var awardsView: AwardsView? {
        guard isViewLoaded else { return nil }
        return view as? AwardsView
    }
    
    var coordinator: AwardsCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = AwardsView()
    }
}
