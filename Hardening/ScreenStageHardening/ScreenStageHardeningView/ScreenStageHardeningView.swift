//
//  ScreenStageHardeningView.swift
//  Hardening
//
//  Created by MAC on 11.05.2022.
//

import UIKit

class ScreenStageHardeningView: UIView {
    
    // MARK: - Property
    
    var screenStageHardeningModel = ScreenStageHardeningModel.data
    
    private lazy var textAboutHardening = configureText(text: screenStageHardeningModel.textAboutHardening,
                                                        ofSize: 20,
                                                        weight: .medium,
                                                        color: .black)
    
    private lazy var buttonStageOne = configuraButtonStageHardening(text: "Этап 1",
                                                                    action: #selector(tapStageOneHardening),
                                                                    color: UIColor(red: 91/255.0, green: 182/255, blue: 185/255.0, alpha: 1.0))
    private lazy var buttonStageTwo = configuraButtonStageHardening(text: "Этап 2",
                                                                    action: #selector(tapStageTwoHardening),
                                                                    color: .systemGray4)
    private lazy var buttonStageThree = configuraButtonStageHardening(text: "Этап 3",
                                                                      action: #selector(tapStageThreeHardening),
                                                                      color: .systemGray4)
    
    private lazy var stackView: UIStackView = {
       var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 45
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var openTabBarHardening: (() -> Void)?
    
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
        addSubview(textAboutHardening)
        addSubview(stackView)
        stackView.addArrangedSubview(buttonStageOne)
        stackView.addArrangedSubview(buttonStageTwo)
        addSubview(buttonStageThree)
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            
            textAboutHardening.topAnchor.constraint(equalTo: topAnchor, constant: 170),
            textAboutHardening.centerXAnchor.constraint(equalTo: centerXAnchor),
            textAboutHardening.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            textAboutHardening.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),

            stackView.topAnchor.constraint(equalTo: textAboutHardening.bottomAnchor, constant: 90),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),

            buttonStageOne.heightAnchor.constraint(equalToConstant: 120),
            buttonStageOne.widthAnchor.constraint(equalToConstant: 120),

            buttonStageTwo.heightAnchor.constraint(equalToConstant: 120),
            buttonStageTwo.widthAnchor.constraint(equalToConstant: 120),

            buttonStageThree.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 50),
            buttonStageThree.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonStageThree.heightAnchor.constraint(equalToConstant: 120),
            buttonStageThree.widthAnchor.constraint(equalToConstant: 120),
        ])
    }
    
    private func configuraButtonStageHardening(text: String, action: Selector, color: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.backgroundColor = color
        button.setTitle(text, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 120/2
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .bold)
        button.addTarget(self, action: action, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    private func configureText(text: String, ofSize: CGFloat, weight: UIFont.Weight, color: UIColor) -> UILabel {
        let label = UILabel()
         label.font = .systemFont(ofSize: ofSize, weight: weight)
         label.text = text
         label.translatesAutoresizingMaskIntoConstraints = false
         label.numberOfLines = 0
         label.textAlignment = .center
         label.textColor = color
         return label
    }
    
    @objc func tapStageOneHardening() {
        openTabBarHardening?()
    }
    
    @objc func tapStageTwoHardening() {
        
    }
    
    @objc func tapStageThreeHardening() {
        
    }
}
