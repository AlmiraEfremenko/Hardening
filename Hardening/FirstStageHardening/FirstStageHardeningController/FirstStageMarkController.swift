//
//  FirstStageMarkController.swift
//  Hardening
//
//  Created by MAC on 20.05.2022.
//

import Foundation
import UIKit

class FirstStageMarkController: UIViewController {
    
    weak var delegate: AwardsDelegate?
    
    private var firstStageMarkView: FirstStageMarkView? {
        guard isViewLoaded else { return nil }
        return view as? FirstStageMarkView
    }
    
    var coordinator: FirstStageMarkCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = FirstStageMarkView()
        firstStageMarkView?.toSecondStage = { [weak self] in
            self?.coordinator?.openSecondStage()
        }
        
        // Вот здесь засада - не работает - хотела при нажатии на кнопку чтобы изменилось кол-во снежинок в наградах
        firstStageMarkView?.toAwards = {  [weak self] in
            self?.delegate?.addAwards()
        }
    }
}
