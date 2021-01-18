//
//  MyProfileDetailsViewController.swift
//  labs-ios-starter
//
//  Created by Stephanie Ballard on 12/21/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class MyProfileDetailsViewController: UIViewController {
    
    // MARK: - Properties -
    private let saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Save", for: .normal)
        button.setTitleColor(UIColor.esbGreen?.lighter(), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25)
        button.setHeight(height: 40)
        button.backgroundColor = .black
        button.layer.cornerRadius = 8.0
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1.0
        button.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private let firstNameTextLabel: UILabel = {
        let label = UILabel()
        label.text = "First Name:"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 16)
        return label
    }()
    
    private let middleNameTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Middle Name:"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 16)
        return label
    }()
    
    private let lastNameTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Last Name:"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 16)
        return label
    }()
    
    private let emailTextLabel: UILabel = {
        let label = UILabel()
        label.text = "E-mail:"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 16)
        return label
    }()
    
    private let skypeTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Skype:"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 16)
        return label
    }()
    
    private let phoneNumberTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Phone Number:"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 16)
        return label
    }()
    
    // MARK: - StackView -
    private let verticalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        return stackView
    }()
    
    // MARK: - LifeCycle Functions -
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureNavigationBar()
    }
    
    // MARK: - Selectors -
    @objc func saveButtonTapped() {
        navigationController?.popViewController(animated: true)
        print("Save Button tapped")
    }
    
    // MARK: - Helper Functions -
    private func configureUI() {
        navigationController?.navigationBar.isHidden = false
        
        configureGradientLayer()
        
        view.addSubviews(subviews: verticalStackView, saveButton)
        
        verticalStackView.addArrangedSubview(firstNameTextLabel)
        verticalStackView.addArrangedSubview(middleNameTextLabel)
        verticalStackView.addArrangedSubview(lastNameTextLabel)
        verticalStackView.addArrangedSubview(emailTextLabel)
        verticalStackView.addArrangedSubview(skypeTextLabel)
        verticalStackView.addArrangedSubview(phoneNumberTextLabel)
        
        verticalStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 20, paddingLeft: 30, paddingRight: 30)
        
        saveButton.anchor(top: verticalStackView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40, paddingLeft: 70, paddingRight: 70)
    }
    
    func configureNavigationBar() {
        let appearance = UINavigationBarAppearance()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        appearance.backgroundColor = UIColor.esbGreen?.lighter(componentDelta: 0.2)
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Edit Details"
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.isTranslucent = true
    }
}
