//
//  ProfileController.swift
//  Hardening
//
//  Created by MAC on 21.05.2022.
//

import UIKit

class ProfileController: UIViewController {
    
    private var profileView: ProfileView? {
        guard isViewLoaded else { return nil }
        return view as? ProfileView
    }
    
    var coordinator: ProfileCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = ProfileView()
    }
}
