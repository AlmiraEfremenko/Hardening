//
//  ScreenGreetingsView.swift
//  Hardening
//
//  Created by MAC on 10.05.2022.
//

import UIKit

class ScreenGreetingsView: UIView {
    
    private lazy var labelGreetings: UILabel = {
        var label = UILabel()
        label.text = "Привет, "
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var imageHardening: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var questionsAboutHealth: UILabel = {
        var label = UILabel()
        label.text = "Закалтвание бла бла...."
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
}
