//
//  View.swift
//  Hardening
//
//  Created by MAC on 19.04.2022.
//

import UIKit

class MainScreenView: UIView {
    
    // MARK: - Property
    
    var data = Model.data
    
    private lazy var titleLarge: UILabel = {
        var titleLarge = UILabel()
        titleLarge.font = .systemFont(ofSize: 25, weight: .bold)
        titleLarge.textAlignment = .center
        titleLarge.textColor = .black
        titleLarge.numberOfLines = 0
        titleLarge.text = data.titleLarge
        titleLarge.translatesAutoresizingMaskIntoConstraints = false
        return titleLarge
    }()
    
    private lazy var titleInCardLeft: UILabel = {
        var titleInCard = UILabel()
        titleInCard.font = .systemFont(ofSize: 20, weight: .medium)
        titleInCard.textAlignment = .center
        titleInCard.textColor = .black
        titleInCard.text = "1 месяц"
        titleInCard.translatesAutoresizingMaskIntoConstraints = false
        return titleInCard
    }()
    
    private lazy var titleInCardRight: UILabel = {
        var titleInCard = UILabel()
        titleInCard.font = .systemFont(ofSize: 20, weight: .medium)
        titleInCard.textAlignment = .center
        titleInCard.textColor = .white
        titleInCard.text = "6 месяцев"
        titleInCard.translatesAutoresizingMaskIntoConstraints = false
        return titleInCard
    }()
    
    private lazy var textAboutCostLeft: UILabel = {
        var textAboutCost = UILabel()
        textAboutCost.font = .systemFont(ofSize: 20, weight: .medium)
        textAboutCost.textColor = .black
        textAboutCost.lineBreakMode = .byCharWrapping
        textAboutCost.numberOfLines = 0
        textAboutCost.text = "379 руб. в месяц"
        textAboutCost.translatesAutoresizingMaskIntoConstraints = false
        return textAboutCost
    }()
    
    private lazy var textAboutCostRight: UILabel = {
        var textAboutCost = UILabel()
        textAboutCost.font = .systemFont(ofSize: 20, weight: .medium)
        textAboutCost.textColor = .white
        textAboutCost.lineBreakMode = .byCharWrapping
        textAboutCost.numberOfLines = 0
        textAboutCost.text = "1050 руб. в месяц"
        textAboutCost.translatesAutoresizingMaskIntoConstraints = false
        return textAboutCost
    }()
    
    private lazy var textAboutRateLeft: UILabel = {
        var textAboutRate = UILabel()
        textAboutRate.font = .systemFont(ofSize: 20, weight: .light)
        textAboutRate.textColor = .gray
        textAboutRate.text = "Ежемесячная оплата, первые 7 дней без оплаты"
        textAboutRate.addInterlineSpacing()
        textAboutRate.numberOfLines = 0
        textAboutRate.translatesAutoresizingMaskIntoConstraints = false
        return textAboutRate
    }()
    
    private lazy var textAboutRateRight: UILabel = {
        var textAboutRate = UILabel()
        textAboutRate.font = .systemFont(ofSize: 20, weight: .light)
        textAboutRate.textColor = .systemGray4
        textAboutRate.text = "Ежемесячная оплата, первые 7 дней без оплаты"
        textAboutRate.addInterlineSpacing()
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
    
    private lazy var iconContainerLeft: UIView = {
        var viewCard = UIView()
        viewCard.backgroundColor = .white
        viewCard.layer.cornerRadius = 15
        viewCard.translatesAutoresizingMaskIntoConstraints = false
        return viewCard
    }()
    
    private lazy var iconContainerRight: UIView = {
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
        viewCardLeft.addSubview(titleInCardLeft)
        viewCardLeft.addSubview(textAboutCostLeft)
        viewCardLeft.addSubview(textAboutRateLeft)
        viewCardLeft.addSubview(iconContainerLeft)
        
        viewCardRight.addSubview(titleInCardRight)
        viewCardRight.addSubview(textAboutCostRight)
        viewCardRight.addSubview(textAboutRateRight)
        viewCardRight.addSubview(iconContainerRight)
        
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

            titleInCardLeft.centerXAnchor.constraint(equalTo: viewCardLeft.centerXAnchor),
            titleInCardLeft.topAnchor.constraint(equalTo: viewCardLeft.topAnchor, constant: 25),
            
            titleInCardRight.centerXAnchor.constraint(equalTo: viewCardRight.centerXAnchor),
            titleInCardRight.topAnchor.constraint(equalTo: viewCardRight.topAnchor, constant: 25),
            
            textAboutCostLeft.leadingAnchor.constraint(equalTo: viewCardLeft.leadingAnchor, constant: 15),
            textAboutCostLeft.topAnchor.constraint(equalTo: titleInCardLeft.bottomAnchor, constant: 15),
            textAboutCostLeft.trailingAnchor.constraint(equalTo: viewCardLeft.trailingAnchor, constant: -55),
            
            textAboutCostRight.leadingAnchor.constraint(equalTo: viewCardRight.leadingAnchor, constant: 15),
            textAboutCostRight.topAnchor.constraint(equalTo: titleInCardRight.bottomAnchor, constant: 15),
            textAboutCostRight.trailingAnchor.constraint(equalTo: viewCardRight.trailingAnchor, constant: -55),
            
            textAboutRateLeft.leadingAnchor.constraint(equalTo: viewCardLeft.leadingAnchor, constant: 15),
            textAboutRateLeft.topAnchor.constraint(equalTo: textAboutCostLeft.bottomAnchor, constant: 15),
            textAboutRateLeft.trailingAnchor.constraint(equalTo: viewCardLeft.trailingAnchor, constant: -15),
            
            textAboutRateRight.leadingAnchor.constraint(equalTo: viewCardRight.leadingAnchor, constant: 15),
            textAboutRateRight.topAnchor.constraint(equalTo: textAboutCostRight.bottomAnchor, constant: 15),
            textAboutRateRight.trailingAnchor.constraint(equalTo: viewCardRight.trailingAnchor, constant: -15),
            
            iconContainerLeft.leadingAnchor.constraint(equalTo: viewCardLeft.leadingAnchor, constant: 15),
            iconContainerLeft.topAnchor.constraint(equalTo: textAboutRateLeft.bottomAnchor, constant: 20),
            iconContainerLeft.heightAnchor.constraint(equalToConstant: 30),
            iconContainerLeft.widthAnchor.constraint(equalToConstant: 30),
            
            iconContainerRight.leadingAnchor.constraint(equalTo: viewCardRight.leadingAnchor, constant: 15),
            iconContainerRight.topAnchor.constraint(equalTo: textAboutRateRight.bottomAnchor, constant: 20),
            iconContainerRight.heightAnchor.constraint(equalToConstant: 30),
            iconContainerRight.widthAnchor.constraint(equalToConstant: 30),
            
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

private extension UILabel {

    // MARK: - spacingValue is spacing that you need
    func addInterlineSpacing(spacingValue: CGFloat = 2) {

        // MARK: - Check if there's any text
        guard let textString = text else { return }

        // MARK: - Create "NSMutableAttributedString" with your text
        let attributedString = NSMutableAttributedString(string: textString)

        // MARK: - Create instance of "NSMutableParagraphStyle"
        let paragraphStyle = NSMutableParagraphStyle()

        // MARK: - Actually adding spacing we need to ParagraphStyle
        paragraphStyle.lineSpacing = spacingValue

        // MARK: - Adding ParagraphStyle to your attributed String
        attributedString.addAttribute(
            .paragraphStyle,
            value: paragraphStyle,
            range: NSRange(location: 0, length: attributedString.length
        ))

        // MARK: - Assign string that you've modified to current attributed Text
        attributedText = attributedString
    }
}
