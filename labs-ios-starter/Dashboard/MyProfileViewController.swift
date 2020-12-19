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
    
    private let myProfileTextLabel: UILabel = {
        let label = UILabel()
        label.text = "My Profile"
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.font = UIFont.init(name: "Verdana", size: 30)
        return label
    }()
    
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
    
    private let LastNameTextLabel: UILabel = {
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
    
    // MARK: - LifeCycle Functions -
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Actions -
    
    // MARK: - Helper Functions -
    
    private func configureUI() {
        navigationController?.navigationBar.isHidden = false
        UIHelper.configureGradientLayer(view: view)
        
        view.addSubviews(subviews: myProfileTextLabel, firstNameTextLabel, usersFirstNameTextLabel, middleNameTextLabel, usersMiddleNameTextLabel, LastNameTextLabel, usersLastNameTextLabel, emailTextLabel, usersEmailTextLabel, skypeTextLabel, usersSkypeTextLabel, phoneNumberTextLabel, usersPhoneNumberTextLabel)
        
        myProfileTextLabel.centerX(inView: view)
        myProfileTextLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 8)
        myProfileTextLabel.setDimensions(height: 150, width: 250)
        
        
    }
}

// TODO: first name label and label that shows the user's name
//       middle name label ""
//       last name ""
//       email ""
//       Skype ""
//       Phone number ""
