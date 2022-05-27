//
//  FirstStageMarkView.swift
//  Hardening
//
//  Created by MAC on 20.05.2022.
//

import UIKit

class FirstStageMarkView: UIView {
    
    // MARK: - Property
    
    var firstStageMarkModel = FirstStageMarkModel.data
    
    private lazy var titleLarge: UILabel = {
        var titleLarge = UILabel()
        titleLarge.font = .systemFont(ofSize: 25, weight: .bold)
        titleLarge.textAlignment = .center
        titleLarge.textColor = .black
        titleLarge.numberOfLines = 0
        titleLarge.text = firstStageMarkModel.title
        titleLarge.translatesAutoresizingMaskIntoConstraints = false
        return titleLarge
    }()
    
    private lazy var stackViewOne = configuraStackView()
    private lazy var stackViewTwo = configuraStackView()
    private lazy var stackViewThree = configuraStackView()
    private lazy var stackViewFour = configuraStackView()
    
    private lazy var buttonOne = configuraButtonMark(text: firstStageMarkModel.textButton.one)
    private lazy var buttonTwo = configuraButtonMark(text: firstStageMarkModel.textButton.two)
    private lazy var buttonThree = configuraButtonMark(text: firstStageMarkModel.textButton.three)
    private lazy var buttonFour = configuraButtonMark(text: firstStageMarkModel.textButton.four)
    private lazy var buttonFive = configuraButtonMark(text: firstStageMarkModel.textButton.five)
    private lazy var buttonSix = configuraButtonMark(text: firstStageMarkModel.textButton.six)
    private lazy var buttonSeven = configuraButtonMark(text: firstStageMarkModel.textButton.seven)
    private lazy var buttonEight = configuraButtonMark(text: firstStageMarkModel.textButton.eight)
    private lazy var buttonNine = configuraButtonMark(text: firstStageMarkModel.textButton.nine)
    private lazy var buttonTen = configuraButtonMark(text: firstStageMarkModel.textButton.ten)
    private lazy var buttonEleven = configuraButtonMark(text: firstStageMarkModel.textButton.eleven)
    private lazy var buttonTwelve = configuraButtonMark(text: firstStageMarkModel.textButton.twelve)
    private lazy var buttonThirteen = configuraButtonMark(text: firstStageMarkModel.textButton.thirteen)
    private lazy var buttonFourteen = configuraButtonMark(text: firstStageMarkModel.textButton.fourteen)

    private lazy var buttonToSecondStage: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("Перейти во 2 этап", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 11/255.0, green: 220/255, blue: 248/255.0, alpha: 1.0)
        button.addTarget(self, action: #selector(tapButtonSecondStage), for: .touchUpInside)
        button.layer.cornerRadius = 18
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var toSecondStage: (() -> Void)?
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Hierarchy
    
    private func setupHierarchy() {
        addSubview(titleLarge)
        addSubview(stackViewOne)
        addSubview(stackViewTwo)
        addSubview(stackViewThree)
        addSubview(stackViewFour)
        stackViewOne.addArrangedSubview(buttonOne)
        stackViewOne.addArrangedSubview(buttonTwo)
        stackViewOne.addArrangedSubview(buttonThree)
        stackViewOne.addArrangedSubview(buttonFour)
        stackViewTwo.addArrangedSubview(buttonFive)
        stackViewTwo.addArrangedSubview(buttonSix)
        stackViewTwo.addArrangedSubview(buttonSeven)
        stackViewTwo.addArrangedSubview(buttonEight)
        stackViewThree.addArrangedSubview(buttonNine)
        stackViewThree.addArrangedSubview(buttonTen)
        stackViewThree.addArrangedSubview(buttonEleven)
        stackViewThree.addArrangedSubview(buttonTwelve)
        stackViewFour.addArrangedSubview(buttonThirteen)
        stackViewFour.addArrangedSubview(buttonFourteen)
        addSubview(buttonToSecondStage)
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
        titleLarge.topAnchor.constraint(equalTo: topAnchor, constant: 140),
        titleLarge.centerXAnchor.constraint(equalTo: centerXAnchor),
        titleLarge.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        titleLarge.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        
        stackViewOne.topAnchor.constraint(equalTo: titleLarge.bottomAnchor, constant: 40),
        stackViewOne.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        stackViewOne.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        
        stackViewTwo.topAnchor.constraint(equalTo: stackViewOne.bottomAnchor, constant: 18),
        stackViewTwo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        stackViewTwo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        
        stackViewThree.topAnchor.constraint(equalTo: stackViewTwo.bottomAnchor, constant: 18),
        stackViewThree.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        stackViewThree.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        
        stackViewFour.topAnchor.constraint(equalTo: stackViewThree.bottomAnchor, constant: 18),
        stackViewFour.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        stackViewFour.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -200),
        
        buttonToSecondStage.centerXAnchor.constraint(equalTo: centerXAnchor),
        buttonToSecondStage.topAnchor.constraint(equalTo: stackViewFour.bottomAnchor, constant: 40),
        buttonToSecondStage.heightAnchor.constraint(equalToConstant: 55),
        buttonToSecondStage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1 / 1.1)
        ])
    }
    
    // MARK: - Configura button mark
    
    private func configuraButtonMark(text: String) -> UIButton {
        let button = UIButton(type: .system)
        button.backgroundColor = .systemGray3
        button.setTitle(text, for: .normal)
        button.layer.cornerRadius = 40
        button.heightAnchor.constraint(equalToConstant: 80).isActive = true
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.addTarget(self, action: #selector(tapButtonMark), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    // MARK: - Configura stackView
    
    private func configuraStackView() -> UIStackView {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }
    
    // MARK: - Tap button mark
    
    @objc func tapButtonMark(button: UIButton) {
        button.layer.cornerRadius = 40
        button.backgroundColor = UIColor(red: 100.0/255.0, green: 130.0/150.0, blue: 255.0/255.0, alpha: 1.0)
        button.setImage(UIImage(systemName: "checkmark")?.withTintColor(.white).withRenderingMode(.alwaysOriginal), for: .normal)
        button.setTitle(nil, for: .normal)
    }
    
    // MARK: - Tap button to second stage
    
    @objc func tapButtonSecondStage() {
        toSecondStage?()
    }
}
