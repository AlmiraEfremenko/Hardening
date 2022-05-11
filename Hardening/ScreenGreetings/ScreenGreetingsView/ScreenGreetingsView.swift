//
//  ScreenGreetingsView.swift
//  Hardening
//
//  Created by MAC on 10.05.2022.
//

import UIKit

class ScreenGreetingsView: UIView {
    
    // MARK: - Property
    
    var screenGreetingsModel = ScreenGreetingsModel.data
    private lazy var isChoiceCheckBox = false
    
    private lazy var labelGreetings: UILabel = {
        var label = UILabel()
        label.text = screenGreetingsModel.labelGreetings
        label.textColor = .black
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var imageHardening: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "закаливание")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var answerQuestionsAboutHealth: UILabel = {
        var label = UILabel()
        label.text = screenGreetingsModel.questionsAboutHealth
        label.numberOfLines = 0
        label.addInterlineSpacing()
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var idont: UILabel = {
        var label = UILabel()
        label.text = screenGreetingsModel.idont
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var textAboutHealthHeart: UILabel = {
        var label = UILabel()
        label.text = screenGreetingsModel.textAboutHealthHeart
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var textAboutHealth: UILabel = {
        var label = UILabel()
        label.text = screenGreetingsModel.textAboutHealth
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var buttonCheckAboutHealthHeart: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGray5
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(tapCheckBoxHealthHeart), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var buttonCheckAboutHealth: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGray5
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(tapCheckBoxAboutHeart), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var buttonProceed: UIButton = {
        var buttonProceed = UIButton(type: .system)
        buttonProceed.setTitle("Продолжить", for: .normal)
        buttonProceed.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        buttonProceed.setTitleColor(.white, for: .normal)
        buttonProceed.backgroundColor = UIColor(red: 100.0/255.0, green: 130.0/150.0, blue: 255.0/255.0, alpha: 1.0)
        buttonProceed.addTarget(self, action: #selector(followToScreenStageHardening), for: .touchUpInside)
        buttonProceed.layer.cornerRadius = 18
        buttonProceed.translatesAutoresizingMaskIntoConstraints = false
        return buttonProceed
    }()
    
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
        addSubview(labelGreetings)
        addSubview(imageHardening)
        addSubview(answerQuestionsAboutHealth)
        addSubview(idont)
        addSubview(buttonCheckAboutHealthHeart)
        addSubview(buttonCheckAboutHealth)
        addSubview(textAboutHealthHeart)
        addSubview(textAboutHealth)
        addSubview(buttonProceed)
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
        
            labelGreetings.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelGreetings.topAnchor.constraint(equalTo: topAnchor, constant: 120),
            
            imageHardening.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageHardening.topAnchor.constraint(equalTo: labelGreetings.bottomAnchor, constant: 30),
            imageHardening.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            imageHardening.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            
            answerQuestionsAboutHealth.centerXAnchor.constraint(equalTo: centerXAnchor),
            answerQuestionsAboutHealth.topAnchor.constraint(equalTo: imageHardening.bottomAnchor, constant: 30),
            answerQuestionsAboutHealth.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            answerQuestionsAboutHealth.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            idont.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            idont.topAnchor.constraint(equalTo: answerQuestionsAboutHealth.bottomAnchor, constant: 35),
            
            buttonCheckAboutHealthHeart.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            buttonCheckAboutHealthHeart.topAnchor.constraint(equalTo: idont.bottomAnchor, constant: 30),
            buttonCheckAboutHealthHeart.widthAnchor.constraint(equalToConstant: 30),
            buttonCheckAboutHealthHeart.heightAnchor.constraint(equalToConstant: 30),
            
            buttonCheckAboutHealth.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            buttonCheckAboutHealth.topAnchor.constraint(equalTo: buttonCheckAboutHealthHeart.bottomAnchor, constant: 30),
            buttonCheckAboutHealth.widthAnchor.constraint(equalToConstant: 30),
            buttonCheckAboutHealth.heightAnchor.constraint(equalToConstant: 30),
            
            textAboutHealthHeart.leadingAnchor.constraint(equalTo: buttonCheckAboutHealthHeart.trailingAnchor, constant: 13),
            textAboutHealthHeart.topAnchor.constraint(equalTo: idont.bottomAnchor, constant: 25),
            textAboutHealthHeart.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            textAboutHealth.leadingAnchor.constraint(equalTo: buttonCheckAboutHealth.trailingAnchor, constant: 13),
            textAboutHealth.topAnchor.constraint(equalTo: textAboutHealthHeart.bottomAnchor, constant: 20),
            textAboutHealth.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            buttonProceed.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonProceed.topAnchor.constraint(equalTo: textAboutHealth.bottomAnchor,constant: 40),
            buttonProceed.heightAnchor.constraint(equalToConstant: 55),
            buttonProceed.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1 / 1.1)
            ])
    }
    
    // MARK: - func tapCheckBoxHealthHeart
    
    @objc func tapCheckBoxHealthHeart() {
        
        isChoiceCheckBox = !isChoiceCheckBox
        
        if isChoiceCheckBox {
            buttonCheckAboutHealthHeart.setImage(UIImage(systemName: "checkmark")?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
            buttonCheckAboutHealthHeart.backgroundColor = UIColor(red: 100.0/255.0, green: 130.0/150.0, blue: 255.0/255.0, alpha: 1.0)
        } else {
            buttonCheckAboutHealthHeart.setImage(UIImage(systemName: ""), for: .normal)
            buttonCheckAboutHealthHeart.backgroundColor = .systemGray5
        }
    }
    
    // MARK: - func tapCheckBoxAboutHeart
    
    @objc func tapCheckBoxAboutHeart() {
        
        isChoiceCheckBox = !isChoiceCheckBox
        
        if isChoiceCheckBox {
            buttonCheckAboutHealth.setImage(UIImage(systemName: "checkmark")?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
            buttonCheckAboutHealth.backgroundColor = UIColor(red: 100.0/255.0, green: 130.0/150.0, blue: 255.0/255.0, alpha: 1.0)
        } else {
            buttonCheckAboutHealth.setImage(UIImage(systemName: ""), for: .normal)
            buttonCheckAboutHealth.backgroundColor = .systemGray5
        }
    }
    
    // MARK: - func tapCheckBoxAboutHeart
    
    var followScreenStageHardening: (()-> Void)?
    
    @objc func followToScreenStageHardening() {
        
        if isChoiceCheckBox {
            followScreenStageHardening?()
        }
    }
}

// MARK: - extension UILabel 

private extension UILabel {
    
    // MARK: - spacingValue is spacing that you need
    func addInterlineSpacing(spacingValue: CGFloat = 8) {
        
        // MARK: - Check if there's any text
        guard let textString = text else { return }
        
        // MARK: - Create "NSMutableAttributedString" with your text
        let attributedString = NSMutableAttributedString(string: textString)
        
        // MARK: - Create instance of "NSMutableParagraphStyle"
        let paragraphStyle = NSMutableParagraphStyle()
        
        // MARK: - Actually adding spacing we need to ParagraphStyle
        paragraphStyle.lineSpacing = spacingValue
        paragraphStyle.alignment = .center
        
        // MARK: - Adding ParagraphStyle to your attributed String
        attributedString.addAttribute(
            .paragraphStyle,
            value: paragraphStyle,
            range: NSRange(location: 0, length: attributedString.length))
        
        // MARK: - Assign string that you've modified to current attributed Text
        attributedText = attributedString
    }
}
