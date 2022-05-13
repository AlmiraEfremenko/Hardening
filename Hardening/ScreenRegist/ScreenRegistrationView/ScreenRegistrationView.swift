//
//  ScreenRegistrationView.swift
//  Hardening
//
//  Created by MAC on 27.04.2022.
//

import UIKit

class ScreenRegistrationView: UIView {
    
    // MARK: - Property
    
    private let defaults = UserDefaults.standard
    private var registrationModel = ScreenRegistrationModel.data
    
    private lazy var titleRegistration: UILabel = {
       var label = UILabel()
        label.text = registrationModel.registration
        label.font = .systemFont(ofSize: 25, weight: .bold)
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
    
    private lazy var nameUser = configureTextField(text: "Ваше имя")
    private lazy var emailUser = configureTextField(text: "Email:")
    private lazy var passwordUser = configureTextFieldPassword(text: "Пароль:")
    private lazy var isChoiceCheckBox = false
    
    private lazy var checkBox: UIButton = {
        var checkBox = UIButton()
        checkBox.backgroundColor = .white
        checkBox.layer.borderWidth = 0.3
        checkBox.addTarget(self, action: #selector(tapCheckBox), for: .touchUpInside)
        checkBox.translatesAutoresizingMaskIntoConstraints = false
        return checkBox
    }()
    
    private lazy var textPersonalData: UILabel = {
       var label = UILabel()
        label.text = registrationModel.textPersonalData
        label.textColor = .gray
        label.font = .systemFont(ofSize: 14, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var buttonProceed: UIButton = {
        var buttonProceed = UIButton(type: .system)
        buttonProceed.setTitle("Продолжить", for: .normal)
        buttonProceed.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        buttonProceed.setTitleColor(.white, for: .normal)
        buttonProceed.backgroundColor = UIColor(red: 100.0/255.0, green: 130.0/150.0, blue: 255.0/255.0, alpha: 1.0)
        buttonProceed.addTarget(self, action: #selector(tapButtonRegistration), for: .touchUpInside)
        buttonProceed.layer.cornerRadius = 18
        buttonProceed.translatesAutoresizingMaskIntoConstraints = false
        return buttonProceed
    }()
    
    private lazy var logInSocialNetwork: UILabel = {
       var label = UILabel()
        label.text = registrationModel.logInSocialNetwork
        label.font = .systemFont(ofSize: 14)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var buttonInstagramLogIn = configureButtonLogIn(nameImage: "instagram")
    private lazy var buttonVKLogIn = configureButtonLogIn(nameImage: "vk")
    
    private lazy var stackViewInButtonsLogIn: UIStackView = {
        var stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 20
        return stackView
    }()
    
    private lazy var iconSecurityPassword: UIButton = {
        var button = UIButton()
        button.addTarget(self, action: #selector(toggleSecureEntry), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "eye"), for: .normal)
        return button
    }()
    
    var finishRegistration: (()-> Void)?
    
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
        addSubview(titleRegistration)
        addSubview(stackView)
        stackView.addArrangedSubview(nameUser)
        stackView.addArrangedSubview(emailUser)
        stackView.addArrangedSubview(passwordUser)
        passwordUser.addSubview(iconSecurityPassword)
        addSubview(checkBox)
        addSubview(textPersonalData)
        addSubview(buttonProceed)
        addSubview(logInSocialNetwork)
        addSubview(stackViewInButtonsLogIn)
        stackViewInButtonsLogIn.addArrangedSubview(buttonInstagramLogIn)
        stackViewInButtonsLogIn.addArrangedSubview(buttonVKLogIn)
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
        
            titleRegistration.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleRegistration.topAnchor.constraint(equalTo: topAnchor, constant: 170),
            
            stackView.topAnchor.constraint(equalTo: titleRegistration.bottomAnchor, constant: 40),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            nameUser.heightAnchor.constraint(equalToConstant: 60),
            nameUser.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            emailUser.heightAnchor.constraint(equalToConstant: 60),
            emailUser.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            passwordUser.heightAnchor.constraint(equalToConstant: 60),
            passwordUser.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            checkBox.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            checkBox.heightAnchor.constraint(equalToConstant: 25),
            checkBox.widthAnchor.constraint(equalToConstant: 25),
            checkBox.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 15),
            
            textPersonalData.leadingAnchor.constraint(equalTo: checkBox.trailingAnchor, constant: 7),
            textPersonalData.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 12),
            textPersonalData.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            buttonProceed.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonProceed.topAnchor.constraint(equalTo: textPersonalData.bottomAnchor,constant: 50),
            buttonProceed.heightAnchor.constraint(equalToConstant: 55),
            buttonProceed.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1 / 1.1),
            
            logInSocialNetwork.centerXAnchor.constraint(equalTo: centerXAnchor),
            logInSocialNetwork.topAnchor.constraint(equalTo: buttonProceed.bottomAnchor, constant: 100),
            
            stackViewInButtonsLogIn.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackViewInButtonsLogIn.topAnchor.constraint(equalTo: logInSocialNetwork.bottomAnchor, constant: 20),
            buttonInstagramLogIn.heightAnchor.constraint(equalToConstant: 30),
            buttonInstagramLogIn.widthAnchor.constraint(equalToConstant: 30),
            
            buttonVKLogIn.heightAnchor.constraint(equalToConstant: 30),
            buttonVKLogIn.widthAnchor.constraint(equalToConstant: 30),
            
            iconSecurityPassword.trailingAnchor.constraint(equalTo: passwordUser.trailingAnchor, constant: -15),
            iconSecurityPassword.centerYAnchor.constraint(equalTo: passwordUser.centerYAnchor)
        ])
    }
    
    // MARK: - Add settings textField
    
    private func configureTextField(text: String) -> UITextField {
        let textField = UITextField()
        textField.placeholder = text
        textField.textColor = .gray
        textField.layer.cornerRadius = 20
        textField.setLeftPaddingPoints(20)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray5
        return textField
    }
    
    private func configureTextFieldPassword(text: String) -> UITextField {
        let textField = UITextField()
        textField.placeholder = text
        textField.textColor = .gray
        textField.layer.cornerRadius = 20
        textField.setLeftPaddingPoints(20)
        textField.isSecureTextEntry = true
        textField.delegate = self
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray5
        return textField
    }
    
    // MARK: - Add settings buttonsLogIn
    
    private func configureButtonLogIn(nameImage: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: nameImage), for: .normal)
        button.contentMode = .center
        return button
    }
    
    // MARK: - Add settings buttonSecurityTextField
    
    @objc func toggleSecureEntry(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            passwordUser.isSecureTextEntry = false
            sender.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        } else {
            passwordUser.isSecureTextEntry = true
            sender.setImage(UIImage(systemName: "eye"), for: .normal)
        }
    }
    
    // MARK: - Add func button finish registration
    
    @objc func tapButtonRegistration() {
        finishRegistration?()
        
        guard let name = nameUser.text else { return }
        guard let email = emailUser.text else { return }
        guard let password = passwordUser.text else { return }

        if !name.isEmpty, !email.isEmpty, !password.isEmpty && isChoiceCheckBox {
            finishRegistration?()
        } else {
            buttonProceed.isEnabled = true
        }
        
        defaults.set(name, forKey: "name")
        defaults.set(email, forKey: "email")
        defaults.set(password, forKey: "password")
    }
    
    func safeData() {
        nameUser.text = defaults.string(forKey: "name")
        emailUser.text = defaults.string(forKey: "email")
        passwordUser.text = defaults.string(forKey: "password")
    }
    
    // MARK: - Add action button
    
    @objc func tapCheckBox() {
        
        isChoiceCheckBox = !isChoiceCheckBox
        
        if isChoiceCheckBox {
            checkBox.setImage(UIImage(systemName: "checkmark")?.withTintColor(.gray, renderingMode: .alwaysOriginal), for: .normal)
        } else {
            checkBox.setImage(UIImage(systemName: " "), for: .normal)
        }
    }
}

// MARK: - Add extension UITextField spacing

extension UITextField {
    func setLeftPaddingPoints(_ amount: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}

// MARK: - Add extension UITextFieldDelegate for amount password in textField

extension ScreenRegistrationView: UITextFieldDelegate {
    
   func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return range.location < 5
    }
}
