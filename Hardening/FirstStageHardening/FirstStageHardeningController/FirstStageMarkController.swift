//
//  FirstStageMarkController.swift
//  Hardening
//
//  Created by MAC on 20.05.2022.
//

import Foundation
import UIKit

class FirstStageMarkController: UIViewController {
    
    private var firstStageMarkView: FirstStageMarkView? {
        guard isViewLoaded else { return nil }
        return view as? FirstStageMarkView
    }
    
    var coordinator: FirstStageMarkCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = FirstStageMarkView()
    }
}
