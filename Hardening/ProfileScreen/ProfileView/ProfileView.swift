//
//  ProfileView.swift
//  Hardening
//
//  Created by MAC on 21.05.2022.
//

import UIKit

class ProfileView: UIView {
    
    // MARK: - Property
    
    private lazy var viewColorTop = createViewColor(color: UIColor(red: 91/255.0, green: 182/255, blue: 185/255.0, alpha: 1.0))
  
    private lazy var image: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(systemName: "camera.circle")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 20
        image.layer.masksToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var buttonSave: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("Сохранить", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        button.setTitleColor(UIColor(red: 91/255.0, green: 182/255, blue: 185/255.0, alpha: 1.0), for: .normal)
        button.backgroundColor = .white
        button.layer.borderColor = UIColor(red: 91/255.0, green: 182/255, blue: 185/255.0, alpha: 1.0).cgColor
        button.layer.borderWidth = 3
        //buttonProceed.addTarget(self, action: #selector(tapButtonRegistration), for: .touchUpInside)
        button.layer.cornerRadius = 18
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
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
        addSubview(viewColorTop)
        viewColorTop.addSubview(image)
        addSubview(buttonSave)
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            
            viewColorTop.topAnchor.constraint(equalTo: topAnchor),
            viewColorTop.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewColorTop.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewColorTop.bottomAnchor.constraint(equalTo: centerYAnchor, constant: -50),
            
            image.centerXAnchor.constraint(equalTo: viewColorTop.centerXAnchor),
            image.bottomAnchor.constraint(equalTo: viewColorTop.bottomAnchor, constant: -50),
            image.heightAnchor.constraint(equalToConstant: 150),
            image.widthAnchor.constraint(equalToConstant: 150),
            
            buttonSave.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonSave.topAnchor.constraint(equalTo: viewColorTop.bottomAnchor,constant: 290),
            buttonSave.heightAnchor.constraint(equalToConstant: 55),
            buttonSave.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1 / 1.1),
        ])
    }
    
    private func createViewColor(color: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
