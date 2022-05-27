//
//  ProfileView.swift
//  Hardening
//
//  Created by MAC on 21.05.2022.
//

import UIKit

class ProfileView: UIView {
    
    // MARK: - Property
    
    private lazy var viewColorTop = createViewColor(color: UIColor(red: 49/255.0, green: 209/150.0, blue: 234/255.0, alpha: 1.0))
    private lazy var viewColorBottom = createViewColor(color: UIColor(red: 103/255.0, green: 112.0/150.0, blue: 233.0/255.0, alpha: 1.0))
    
    
    
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Hierarchy
    
    private func setupHierarchy() {
        addSubview(viewColorTop)
        //addSubview(viewColorBottom)
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            
            viewColorTop.topAnchor.constraint(equalTo: topAnchor),
            viewColorTop.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewColorTop.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewColorTop.bottomAnchor.constraint(equalTo: centerYAnchor),
            
        ])
    }
    
    private func createViewColor(color: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    
    
}
