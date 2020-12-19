//
//  MyProfileViewController.swift
//  labs-ios-starter
//
//  Created by Stephanie Ballard on 12/18/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

// TODO: first name label and label that shows the user's name
//       middle name label ""
//       last name ""
//       email ""
//       Skype ""
//       Phone number ""

//       Edit button and segue to edit details view controller
//       Delete button ""

import UIKit

class MyProfileViewController: UIViewController {
    
    // MARK: - Properties -
    
    // MARK: - TextLabels -
    private let firstNameTextLabel: UILabel = {
        let label = UILabel()
        label.text = "First Name"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 14)
        return label
    }()
    
    private let usersFirstNameTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Stephanie"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 14)
        return label
    }()
    
    private let middleNameTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Middle Name"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 14)
        return label
    }()
    
    private let usersMiddleNameTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Anne"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 14)
        return label
    }()
    
    private let lastNameTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Last Name"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 14)
        return label
    }()
    
    private let usersLastNameTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Ballard"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 14)
        return label
    }()
    
    private let emailTextLabel: UILabel = {
        let label = UILabel()
        label.text = "E-mail"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 14)
        return label
    }()
    
    private let usersEmailTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Stephanie@gmail.com"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 14)
        return label
    }()
    
    private let skypeTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Skype"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 14)
        return label
    }()
    
    private let usersSkypeTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Stephanie@Skype"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 14)
        return label
    }()
    
    private let phoneNumberTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Phone Number"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 14)
        return label
    }()
    
    private let usersPhoneNumberTextLabel: UILabel = {
        let label = UILabel()
        label.text = "282-890-3458"
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.init(name: "Verdana", size: 14)
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
    }
    
    // MARK: - Actions -
    
    // MARK: - Helper Functions -
    
    private func configureUI() {
        navigationController?.navigationBar.isHidden = false
        navigationController?.title = "My Profile"
        UIHelper.configureGradientLayer(view: view)
        
        view.addSubviews(subviews:verticalStackView, firstNameTextLabel, usersFirstNameTextLabel, middleNameTextLabel, usersMiddleNameTextLabel, lastNameTextLabel, usersLastNameTextLabel, emailTextLabel, usersEmailTextLabel, skypeTextLabel, usersSkypeTextLabel, phoneNumberTextLabel, usersPhoneNumberTextLabel)
        
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
    }
}
