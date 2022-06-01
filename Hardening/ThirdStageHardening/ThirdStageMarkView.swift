//
//  ThirdStageMarkView.swift
//  Hardening
//
//  Created by MAC on 31.05.2022.
//

import UIKit

class ThirdStageMarkView: UIView {
    
    // MARK: - Property
    
    var thirdStageMarkModel = ThirdStageMarkModel.data
    
    private lazy var titleLarge: UILabel = {
        var titleLarge = UILabel()
        titleLarge.font = .systemFont(ofSize: 25, weight: .bold)
        titleLarge.textAlignment = .center
        titleLarge.textColor = .black
        titleLarge.numberOfLines = 0
        titleLarge.text = thirdStageMarkModel.title
        titleLarge.translatesAutoresizingMaskIntoConstraints = false
        return titleLarge
    }()
    
    private lazy var stackViewOne = configuraStackView()
    private lazy var stackViewTwo = configuraStackView()
    private lazy var stackViewThree = configuraStackView()
    private lazy var stackViewFour = configuraStackView()
    
    private lazy var buttonOne = configuraButtonMark(text: thirdStageMarkModel.textButton.one)
    private lazy var buttonTwo = configuraButtonMark(text: thirdStageMarkModel.textButton.two)
    private lazy var buttonThree = configuraButtonMark(text: thirdStageMarkModel.textButton.three)
    private lazy var buttonFour = configuraButtonMark(text: thirdStageMarkModel.textButton.four)
    private lazy var buttonFive = configuraButtonMark(text: thirdStageMarkModel.textButton.five)
    private lazy var buttonSix = configuraButtonMark(text: thirdStageMarkModel.textButton.six)
    private lazy var buttonSeven = configuraButtonMark(text: thirdStageMarkModel.textButton.seven)
    private lazy var buttonEight = configuraButtonMark(text: thirdStageMarkModel.textButton.eight)
    private lazy var buttonNine = configuraButtonMark(text: thirdStageMarkModel.textButton.nine)
    private lazy var buttonTen = configuraButtonMark(text: thirdStageMarkModel.textButton.ten)
    private lazy var buttonEleven = configuraButtonMark(text: thirdStageMarkModel.textButton.eleven)
    private lazy var buttonTwelve = configuraButtonMark(text: thirdStageMarkModel.textButton.twelve)
    private lazy var buttonThirteen = configuraButtonMark(text: thirdStageMarkModel.textButton.thirteen)
    private lazy var buttonFourteen = configuraButtonMark(text: thirdStageMarkModel.textButton.fourteen)
    
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
        ])
    }
    
    // MARK: - Configura button mark
    
    private func configuraButtonMark(text: String) -> UIButton {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 91/255.0, green: 182/255, blue: 185/255.0, alpha: 1.0)
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
        button.backgroundColor = .white
        button.layer.borderColor = UIColor(red: 91/255.0, green: 182/255, blue: 185/255.0, alpha: 1.0).cgColor
        button.layer.borderWidth = 3
        button.setImage(UIImage(systemName: "checkmark")?.withTintColor(UIColor(red: 91/255.0, green: 182/255, blue: 185/255.0, alpha: 1.0)).withRenderingMode(.alwaysOriginal), for: .normal)
        button.setTitle(nil, for: .normal)
    }
}
