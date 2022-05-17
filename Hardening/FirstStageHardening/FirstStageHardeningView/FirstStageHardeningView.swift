//
//  FirstStageHardeningView.swift
//  Hardening
//
//  Created by MAC on 16.05.2022.
//

import UIKit

class FirstStageHardeningView: UIView {
    
    // MARK: - Property
    
    private lazy var firstStageHardeningModel = FirstStageHardeningModel.data
    
    private lazy var title: UILabel = {
       var label = UILabel()
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.text = firstStageHardeningModel.title
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    private lazy var stackView: UIStackView = {
       var stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var walkBarefoot = configuraTextInstruction(text: firstStageHardeningModel.walkBarefoot)
    private lazy var sleepOpenWindow = configuraTextInstruction(text: firstStageHardeningModel.sleepOpenWindow)
    private lazy var washingColdWater = configuraTextInstruction(text: firstStageHardeningModel.washingColdWater)
    
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
        addSubview(title)
        addSubview(stackView)
        stackView.addArrangedSubview(walkBarefoot)
        stackView.addArrangedSubview(sleepOpenWindow)
        stackView.addArrangedSubview(washingColdWater)
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
        
            title.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 50),
        ])
    }
    
    // MARK: - configura text instruction
    
    private func configuraTextInstruction(text: String) -> UILabel {
        let label = UILabel()
        label.font = .systemFont(ofSize: 25, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }
}
