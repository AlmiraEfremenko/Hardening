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
 
    private lazy var title = configureText(text: screenStageHardeningModel.title,
                                           ofSize: 28,
                                           weight: .bold,
                                           color: .black)
    private lazy var textAboutHardening = configureText(text: screenStageHardeningModel.textAboutHardening,
                                                        ofSize: 20,
                                                        weight: .medium,
                                                        color: .white)
    
    private lazy var buttonStageOne = configuraButtonStageHardening(text: "Этап 1",
                                                                    action: #selector(tapStageOneHardening),
                                                                    color: UIColor(red: 11/255.0, green: 220/255, blue: 248/255.0, alpha: 1.0))
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
    
    private lazy var viewForTextHardening: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 30
        view.backgroundColor = UIColor(red: 103/255.0, green: 110/255, blue: 232/255.0, alpha: 0.8)
        return view
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
        addSubview(title)
        addSubview(stackView)
        stackView.addArrangedSubview(buttonStageOne)
        stackView.addArrangedSubview(buttonStageTwo)
        addSubview(buttonStageThree)
        addSubview(viewForTextHardening)
        viewForTextHardening.addSubview(textAboutHardening)
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
        
            title.topAnchor.constraint(equalTo: topAnchor, constant: 140),
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            title.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80),
            
            stackView.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 40),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            buttonStageOne.heightAnchor.constraint(equalToConstant: 120),
            buttonStageOne.widthAnchor.constraint(equalToConstant: 120),
            
            buttonStageTwo.heightAnchor.constraint(equalToConstant: 120),
            buttonStageTwo.widthAnchor.constraint(equalToConstant: 120),
            
            buttonStageThree.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 50),
            buttonStageThree.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonStageThree.heightAnchor.constraint(equalToConstant: 120),
            buttonStageThree.widthAnchor.constraint(equalToConstant: 120),
            
            
            viewForTextHardening.centerXAnchor.constraint(equalTo: centerXAnchor),
            viewForTextHardening.topAnchor.constraint(equalTo: buttonStageThree.bottomAnchor, constant: 40),
            viewForTextHardening.heightAnchor.constraint(equalToConstant: 170),
            viewForTextHardening.widthAnchor.constraint(equalToConstant: 320),
            
            textAboutHardening.centerXAnchor.constraint(equalTo: viewForTextHardening.centerXAnchor),
            textAboutHardening.centerYAnchor.constraint(equalTo: viewForTextHardening.centerYAnchor),
            textAboutHardening.leadingAnchor.constraint(equalTo: viewForTextHardening.leadingAnchor, constant: 10),
            textAboutHardening.trailingAnchor.constraint(equalTo: viewForTextHardening.trailingAnchor, constant: -10)
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
