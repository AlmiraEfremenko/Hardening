//
//  AwardsView.swift
//  Hardening
//
//  Created by MAC on 23.05.2022.
//

import UIKit

class AwardsView: UIView {
    
    // MARK: - Property
    
    var awardsModel = AwardsModel.data
    
    private lazy var viewColorTop: UIView = {
        var view = UIView()
        //view.layer.cornerRadius = 20
        //view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 91/255.0, green: 182/255, blue: 185/255.0, alpha: 1.0)
        return view
    }()
    
    private lazy var titleLarge: UILabel = {
        var titleLarge = UILabel()
        titleLarge.font = .systemFont(ofSize: 25, weight: .bold)
        titleLarge.textAlignment = .center
        titleLarge.textColor = .white
        titleLarge.numberOfLines = 0
        titleLarge.text = awardsModel.title
        titleLarge.translatesAutoresizingMaskIntoConstraints = false
        return titleLarge
    }()

    private lazy var image: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "награда")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    private lazy var stackViewLabel = createStackView()
    private lazy var stackViewImage = createStackView()
    private lazy var stackViewCounter = createStackViewForConter()

    private lazy var labelInOneStage = createLabelStage(text: awardsModel.textStage.one)
    private lazy var labelInSecondStage = createLabelStage(text: awardsModel.textStage.two)
    private lazy var labelInThirdStage = createLabelStage(text: awardsModel.textStage.three)

    private lazy var imageInOneStage = createImageStage()
    private lazy var imageInSecondStage = createImageStage()
    private lazy var imageInThirdStage = createImageStage()

    private lazy var viewForCounterOne = createViewForCounter()
    private lazy var viewForCounterSecond = createViewForCounter()
    private lazy var viewForCounterThird = createViewForCounter()

    lazy var labelCounterOneStage = createLabelCounter(text: awardsModel.textCount.one)
    private lazy var labelCounterSecondStage = createLabelCounter(text: awardsModel.textCount.two)
    private lazy var labelCounterThirdStage = createLabelCounter(text: awardsModel.textCount.three)

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
        addSubview(titleLarge)
        addSubview(stackViewLabel)
        addSubview(stackViewImage)
        addSubview(stackViewCounter)
        addSubview(image)

        stackViewLabel.addArrangedSubview(labelInOneStage)
        stackViewLabel.addArrangedSubview(labelInSecondStage)
        stackViewLabel.addArrangedSubview(labelInThirdStage)

        stackViewImage.addArrangedSubview(imageInOneStage)
        stackViewImage.addArrangedSubview(imageInSecondStage)
        stackViewImage.addArrangedSubview(imageInThirdStage)

        stackViewCounter.addArrangedSubview(viewForCounterOne)
        stackViewCounter.addArrangedSubview(viewForCounterSecond)
        stackViewCounter.addArrangedSubview(viewForCounterThird)

        viewForCounterOne.addSubview(labelCounterOneStage)
        viewForCounterSecond.addSubview(labelCounterSecondStage)
        viewForCounterThird.addSubview(labelCounterThirdStage)
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            
            viewColorTop.topAnchor.constraint(equalTo: topAnchor),
            viewColorTop.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewColorTop.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewColorTop.bottomAnchor.constraint(equalTo: centerYAnchor),
            
            titleLarge.centerXAnchor.constraint(equalTo: viewColorTop.centerXAnchor),
            titleLarge.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            
            stackViewLabel.topAnchor.constraint(equalTo: titleLarge.bottomAnchor, constant: 60),
            stackViewLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
            stackViewLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -220),

            stackViewImage.topAnchor.constraint(equalTo: titleLarge.bottomAnchor, constant: 60),
            stackViewImage.leadingAnchor.constraint(equalTo: stackViewLabel.trailingAnchor, constant: 50),
            stackViewImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -120),

            labelInOneStage.heightAnchor.constraint(equalToConstant: 40),
            labelInSecondStage.heightAnchor.constraint(equalToConstant: 40),
            labelInThirdStage.heightAnchor.constraint(equalToConstant: 40),

            imageInOneStage.heightAnchor.constraint(equalToConstant: 40),
            imageInSecondStage.heightAnchor.constraint(equalToConstant: 40),
            imageInThirdStage.heightAnchor.constraint(equalToConstant: 40),

            stackViewCounter.topAnchor.constraint(equalTo: titleLarge.bottomAnchor, constant: 50),
            stackViewCounter.leadingAnchor.constraint(equalTo: stackViewImage.trailingAnchor, constant: 1),
            stackViewCounter.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
            stackViewCounter.heightAnchor.constraint(equalToConstant: 150),

            labelCounterOneStage.centerXAnchor.constraint(equalTo: viewForCounterOne.centerXAnchor),
            labelCounterOneStage.centerYAnchor.constraint(equalTo: viewForCounterOne.centerYAnchor),

            labelCounterSecondStage.centerXAnchor.constraint(equalTo: viewForCounterSecond.centerXAnchor),
            labelCounterSecondStage.centerYAnchor.constraint(equalTo: viewForCounterSecond.centerYAnchor),

            labelCounterThirdStage.centerXAnchor.constraint(equalTo: viewForCounterThird.centerXAnchor),
            labelCounterThirdStage.centerYAnchor.constraint(equalTo: viewForCounterThird.centerYAnchor),

            image.topAnchor.constraint(equalTo: viewColorTop.bottomAnchor, constant: 30),
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            image.heightAnchor.constraint(equalToConstant: 300),
            image.widthAnchor.constraint(equalToConstant: 300)
    ])
}
    
    // MARK: - Create label stage
    
    private func createLabelStage(text: String) -> UILabel {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    // MARK: - Create image stage
    
    private func createImageStage() -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(named: "snowflake_1-removebg-preview")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
    
    // MARK: - Create label counter
    
    private func createLabelCounter(text: String?) -> UILabel {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 10, weight: .heavy)
        label.textColor = UIColor(red: 246.0/255.0, green: 88.0/150.0, blue: 40.0/255.0, alpha: 1.0)
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    // MARK: - Create stackView vertical with label, images and counter
    
    private func createStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        return stackView
    }
    
    // MARK: - Create view circle for counter
    
    private func createViewForCounter() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        view.backgroundColor = .white
        view.layer.borderColor = UIColor(red: 91/255.0, green: 182/255, blue: 185/255.0, alpha: 1.0).cgColor
        view.layer.borderWidth = 1
        return view
    }
    
    // MARK: - Create stackView for view circle for counter
    
    private func createStackViewForConter() -> UIStackView {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 45
        stackView.distribution = .fillEqually
        return stackView
    }
}
