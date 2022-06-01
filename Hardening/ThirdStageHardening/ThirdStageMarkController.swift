//
//  ThirdStageMarkController.swift
//  Hardening
//
//  Created by MAC on 31.05.2022.
//

import Foundation
import UIKit

class ThirdStageMarkController: UIViewController {
    
    private var thirdStageMarkView: ThirdStageMarkView? {
        guard isViewLoaded else { return nil }
        return view as? ThirdStageMarkView
    }
    
    var coordinator: ThirdStageMarkCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = ThirdStageMarkView()
    }
}
