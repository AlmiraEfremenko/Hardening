//
//  ProfileController.swift
//  Hardening
//
//  Created by MAC on 21.05.2022.
//

import UIKit

class ProfileController: UIViewController {
    
    var placeholderData = ["Укажите имя", "Укажите город", "Укажите возраст"]

    private lazy var tableView: UITableView = {
        var tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor(red: 91/255.0, green: 182/255, blue: 185/255.0, alpha: 1.0)
        tableView.rowHeight = 50
        tableView.layer.cornerRadius = 20
        tableView.separatorStyle = .none
        return tableView
    }()
    
    private var profileView: ProfileView? {
        guard isViewLoaded else { return nil }
        return view as? ProfileView
    }
    
    var coordinator: ProfileCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = ProfileView()
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
        view.addSubview(tableView)
    }

    private func setupLayout() {

        NSLayoutConstraint.activate([
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 315),
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -140),
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        ])
    }
}

extension ProfileController:  UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate  {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeholderData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else { return UITableViewCell() }
        cell.placeholder = placeholderData[indexPath.row]
        cell.textField.delegate = self
        return cell
    }
}
