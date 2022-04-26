//
//  View.swift
//  Hardening
//
//  Created by MAC on 19.04.2022.
//

import UIKit

class MainScreenView: UIView {
    
    // MARK: - Property
    private lazy var titleLarge: UILabel = {
        var titleLarge = UILabel()
        titleLarge.font = .systemFont(ofSize: 25, weight: .bold)
        titleLarge.textAlignment = .center
        titleLarge.textColor = .black
        titleLarge.numberOfLines = 0
        titleLarge.text = "Выбери подписку и попробуй 7 дней без оплаты"
        titleLarge.translatesAutoresizingMaskIntoConstraints = false
        return titleLarge
    }()
    
    private lazy var titleInCard: UILabel = {
        var titleInCard = UILabel()
        titleInCard.font = .systemFont(ofSize: 20, weight: .medium)
        titleInCard.textAlignment = .center
        titleInCard.textColor = .black
        titleInCard.text = "1 месяц"
        titleInCard.translatesAutoresizingMaskIntoConstraints = false
        return titleInCard
    }()
    
    private lazy var textAboutCost: UILabel = {
        var textAboutCost = UILabel()
        textAboutCost.font = .systemFont(ofSize: 20, weight: .medium)
        textAboutCost.textColor = .black
        textAboutCost.lineBreakMode = .byCharWrapping
        textAboutCost.numberOfLines = 0
        textAboutCost.text = "379 руб. в месяц"
        textAboutCost.translatesAutoresizingMaskIntoConstraints = false
        return textAboutCost
    }()
    
    private lazy var textAboutRate: UILabel = {
        var textAboutRate = UILabel()
        textAboutRate.font = .systemFont(ofSize: 20, weight: .light)
        textAboutRate.textColor = .gray
        textAboutRate.text = "Ежемесячная оплата, первые 7 дней без оплаты"
        textAboutRate.numberOfLines = 0
        
        textAboutRate.translatesAutoresizingMaskIntoConstraints = false
        return textAboutRate
    }()
    
    private lazy var viewCardLeft: UIView = {
        var viewCard = UIView()
        viewCard.backgroundColor = .lightGray.withAlphaComponent(0.5)
        viewCard.layer.cornerRadius = 5
        viewCard.translatesAutoresizingMaskIntoConstraints = false
        return viewCard
    }()
    
    private lazy var viewCardRight: UIView = {
        var viewCard = UIView()
        viewCard.backgroundColor = .blue
        viewCard.layer.cornerRadius = 5
        viewCard.translatesAutoresizingMaskIntoConstraints = false
        return viewCard
    }()
    
    private lazy var iconContainer: UIView = {
        var viewCard = UIView()
        viewCard.backgroundColor = .white
        viewCard.layer.cornerRadius = 15
        viewCard.translatesAutoresizingMaskIntoConstraints = false
        return viewCard
    }()
    
    private lazy var icon: UIImageView = {
        var icon = UIImageView()
        icon.image = .checkmark
        
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    private lazy var buttonProceed: UIButton = {
        var buttonProceed = UIButton()
        buttonProceed.setTitle("Продолжить", for: .normal)
        buttonProceed.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        buttonProceed.setTitleColor(.white, for: .normal)
        buttonProceed.backgroundColor = UIColor(red: 100.0/255.0, green: 130.0/150.0, blue: 255.0/255.0, alpha: 1.0)
        buttonProceed.layer.cornerRadius = 18
        buttonProceed.translatesAutoresizingMaskIntoConstraints = false
        return buttonProceed
    }()
    
    private lazy var textCommentAboutSubscription: UILabel = {
        var textCommentAboutSubscription = UILabel()
        textCommentAboutSubscription.font = .systemFont(ofSize: 18, weight: .regular)
        textCommentAboutSubscription.textColor = .black
        textCommentAboutSubscription.text = "Отписаться можно в любой момент"
        textCommentAboutSubscription.textAlignment = .center
        textCommentAboutSubscription.translatesAutoresizingMaskIntoConstraints = false
        return textCommentAboutSubscription
    }()
    
    private lazy var textAboutSubscription: UILabel = {
        var textAboutSubscription = UILabel()
        textAboutSubscription.font = .systemFont(ofSize: 20, weight: .light)
        textAboutSubscription.textColor = .black
        textAboutSubscription.text = "Восстановить подписку или Войти"
        textAboutSubscription.textAlignment = .center
        
        textAboutSubscription.translatesAutoresizingMaskIntoConstraints = false
        return textAboutSubscription
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Hierarchy
    private func setupHierarchy() {
        addSubview(titleLarge)
        addSubview(viewCardLeft)
        addSubview(viewCardRight)
        viewCardLeft.addSubview(titleInCard)
        viewCardLeft.addSubview(textAboutCost)
        viewCardLeft.addSubview(textAboutRate)
        viewCardLeft.addSubview(iconContainer)
        //iconContainer.addSubview(icon)
        addSubview(buttonProceed)
        addSubview(textCommentAboutSubscription)
        addSubview(textAboutSubscription)
    }
    
    // MARK: - Layout
    private func setupLayout() {
        NSLayoutConstraint.activate([
            
            titleLarge.topAnchor.constraint(equalTo: topAnchor, constant: 120),
            titleLarge.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            titleLarge.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            titleLarge.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -650),
            
            viewCardLeft.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            viewCardLeft.heightAnchor.constraint(equalToConstant: 300),
            viewCardLeft.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.92 / 2),
            viewCardLeft.topAnchor.constraint(equalTo: titleLarge.bottomAnchor, constant: 40),

            viewCardRight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            viewCardRight.heightAnchor.constraint(equalToConstant: 300),
            viewCardRight.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.92 / 2),
            viewCardRight.topAnchor.constraint(equalTo: titleLarge.bottomAnchor, constant: 40),

            buttonProceed.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonProceed.topAnchor.constraint(equalTo: viewCardLeft.bottomAnchor,constant: 35),
            buttonProceed.heightAnchor.constraint(equalToConstant: 55),
            buttonProceed.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1 / 1.1),

            titleInCard.centerXAnchor.constraint(equalTo: viewCardLeft.centerXAnchor),
            titleInCard.topAnchor.constraint(equalTo: viewCardLeft.topAnchor, constant: 25),
            
            textAboutCost.leadingAnchor.constraint(equalTo: viewCardLeft.leadingAnchor, constant: 15),
            textAboutCost.topAnchor.constraint(equalTo: titleInCard.bottomAnchor, constant: 15),
            textAboutCost.trailingAnchor.constraint(equalTo: viewCardLeft.trailingAnchor, constant: -55),
            
            textAboutRate.leadingAnchor.constraint(equalTo: viewCardLeft.leadingAnchor, constant: 15),
            textAboutRate.topAnchor.constraint(equalTo: textAboutCost.bottomAnchor, constant: 15),
            textAboutRate.trailingAnchor.constraint(equalTo: viewCardLeft.trailingAnchor, constant: -15),
            
            iconContainer.leadingAnchor.constraint(equalTo: viewCardLeft.leadingAnchor, constant: 15),
            iconContainer.topAnchor.constraint(equalTo: textAboutRate.bottomAnchor, constant: 20),
            iconContainer.heightAnchor.constraint(equalToConstant: 30),
            iconContainer.widthAnchor.constraint(equalToConstant: 30),
            
//            icon.centerXAnchor.constraint(equalTo: iconContainer.centerXAnchor),
//            icon.centerYAnchor.constraint(equalTo: iconContainer.centerYAnchor),
//            icon.heightAnchor.constraint(equalToConstant: 35),
//            icon.widthAnchor.constraint(equalToConstant: 35)
            
            textCommentAboutSubscription.centerXAnchor.constraint(equalTo: centerXAnchor),
            textCommentAboutSubscription.topAnchor.constraint(equalTo: buttonProceed.bottomAnchor, constant: 15),
            
            textAboutSubscription.centerXAnchor.constraint(equalTo: centerXAnchor),
            textAboutSubscription.topAnchor.constraint(equalTo: buttonProceed.bottomAnchor, constant: 70)
        
        ])
        
    }
    
    
    
}
