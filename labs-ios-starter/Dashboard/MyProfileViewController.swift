//
//  MyProfileViewController.swift
//  labs-ios-starter
//
//  Created by Stephanie Ballard on 12/18/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController {
    
    // MARK: - TextLabels -
    private let firstNameTextLabel: UILabel = {
        let label = UILabel()
        label.text = "First Name:"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 16)
        return label
    }()
    
    private let usersFirstNameTextLabel: UILabel = {
        let label = UILabel()
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
    
    private let usersMiddleNameTextLabel: UILabel = {
        let label = UILabel()
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
    
    private let usersLastNameTextLabel: UILabel = {
        let label = UILabel()
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
    
    private let usersEmailTextLabel: UILabel = {
        let label = UILabel()
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
    
    private let usersSkypeTextLabel: UILabel = {
        let label = UILabel()
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
    
    private let usersPhoneNumberTextLabel: UILabel = {
        let label = UILabel()
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
    
    // MARK: - Edit Button -
    private let editDetailsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Edit", for: .normal)
        button.setTitleColor(UIColor.esbGreen?.lighter(), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25)
        button.setHeight(height: 40)
        button.backgroundColor = .black
        button.layer.cornerRadius = 8.0
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1.0
        button.addTarget(self, action: #selector(editDetailsButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var ecoSoapBankApiController: EcoSoapBankApiController?
    
    // MARK: - LifeCycle Functions -
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureNavigationBar()
        
        ecoSoapBankApiController?.fetchUserDetails("0") { _ in
            DispatchQueue.main.async {
                self.usersFirstNameTextLabel.text = self.ecoSoapBankApiController?.user?.firstName;
                self.usersMiddleNameTextLabel.text = self.ecoSoapBankApiController?.user?.middleName;
                self.usersLastNameTextLabel.text = self.ecoSoapBankApiController?.user?.lastName;
                self.usersEmailTextLabel.text = self.ecoSoapBankApiController?.user?.email;
                self.usersSkypeTextLabel.text = self.ecoSoapBankApiController?.user?.email;
                self.usersSkypeTextLabel.text = self.ecoSoapBankApiController?.user?.phone;
            }
        }
    }
    
    // MARK: - Selectors -
    @objc func editDetailsButtonTapped() {
        navigationController?.pushViewController(MyProfileDetailsViewController(), animated: true)
        print("Edit Details Button tapped")
    }
    
    // MARK: - Helper Functions -
    private func configureUI() {
        navigationController?.navigationBar.isHidden = false
        
        configureGradientLayer()

        view.addSubviews(subviews: verticalStackView, editDetailsButton)
        
        verticalStackView.addArrangedSubview(firstNameTextLabel)
        verticalStackView.addArrangedSubview(usersFirstNameTextLabel)
        verticalStackView.addArrangedSubview(middleNameTextLabel)
        verticalStackView.addArrangedSubview(usersMiddleNameTextLabel)
        verticalStackView.addArrangedSubview(lastNameTextLabel)
        verticalStackView.addArrangedSubview(usersLastNameTextLabel)
        verticalStackView.addArrangedSubview(emailTextLabel)
        verticalStackView.addArrangedSubview(usersEmailTextLabel)
        verticalStackView.addArrangedSubview(skypeTextLabel)
        verticalStackView.addArrangedSubview(usersSkypeTextLabel)
        verticalStackView.addArrangedSubview(phoneNumberTextLabel)
        verticalStackView.addArrangedSubview(usersPhoneNumberTextLabel)
        
        verticalStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 20, paddingLeft: 30, paddingRight: 30)
        
        editDetailsButton.anchor(top: verticalStackView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40, paddingLeft: 70, paddingRight: 70)
    }
    
    func configureNavigationBar() {
        let appearance = UINavigationBarAppearance()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        appearance.backgroundColor = UIColor.esbGreen?.lighter(componentDelta: 0.2)
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "My Profile"
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.isTranslucent = true
    }
}
