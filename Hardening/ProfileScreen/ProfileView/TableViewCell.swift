//
//  TableViewCell.swift
//  Hardening
//
//  Created by MAC on 29.05.2022.
//

import UIKit

class TableViewCell: UITableViewCell, UITextFieldDelegate {
    
    static let identifier = "TableViewCell"
    
    lazy var textField: UITextField = {
        var textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.delegate = self
        textField.font = UIFont.systemFont(ofSize: 20)
        selectionStyle = .none
        return textField
    }()
    
    var placeholder: String? {
        didSet {
            guard let item = placeholder else { return }
            textField.placeholder = item
        }
    }
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Hierarchy
    
    private func setupHierarchy() {
        contentView.addSubview(textField)
    }
    
    // MARK: - Layout
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            textField.centerYAnchor.constraint(equalTo: centerYAnchor),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            textField.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
}
