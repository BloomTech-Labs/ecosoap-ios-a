//
//  DashboardViewController.swift
//  labs-ios-starter
//
//  Created by Stephanie Ballard on 12/8/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
    
    // MARK: - Properties -
    
    private let welcomeUserTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome User"
        label.textColor = UIColor.black
        label.font = UIFont.init(name: "Verdana", size: 30)
        return label
    }()
    
    private let dashboardButtonsVerticalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    // MARK: - Buttons -
    
    private let myProfileButton: UIButton = {
        let button = UIButton()
        button.setTitle("My Profile", for: .normal)
        return button
    }()
    
    private let allHubsButton: UIButton = {
        let button = UIButton()
        button.setTitle("All Hubs", for: .normal)
        return button
    }()
    
    private let partnershipsButton: UIButton = {
       let button = UIButton()
        button.setTitle("Partnerships", for: .normal)
        return button
    }()

    private let corporateSponsorsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Corporate SponsorsButton", for: .normal)
        return button
    }()
    
    private let ngoSponsorsButton: UIButton = {
        let button = UIButton()
        button.setTitle("NGO Sponsors", for: .normal)
        return button
    }()
    
    private lazy var dashboardButtons: [UIButton] = [myProfileButton, allHubsButton, partnershipsButton, corporateSponsorsButton, ngoSponsorsButton]
    
    // MARK: - LifeCycle Functions -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    // MARK: - Helper Functions -
    private func buttonSetup() {
        for button in dashboardButtons {
            button.setWidth(width: 190)
            button.setHeight(height: 120)
            button.layer.cornerRadius = 12.0
            button.layer.borderWidth = 1.0
            button.layer.borderColor = UIColor.white.cgColor
            button.tintColor = .white
            button.titleLabel?.font = UIFont(name: "Futura", size: 15)
            
            UIHelper.configureShadow(view: button, color: UIColor.black.cgColor)
        }
    }
    
    private func configureUI() {
        navigationController?.navigationBar.isHidden = true
        
        UIHelper.configureGradientLayer(view: view)
        
        view.addSubview(welcomeUserTextLabel)
        welcomeUserTextLabel.centerX(inView: view)
        welcomeUserTextLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 20)
        welcomeUserTextLabel.setDimensions(height: 150, width: 250)
        
        view.addSubview(dashboardButtonsVerticalStackView)
        view.addSubview(myProfileButton)
        view.addSubview(allHubsButton)
        view.addSubview(partnershipsButton)
        view.addSubview(corporateSponsorsButton)
        view.addSubview(ngoSponsorsButton)
        
        dashboardButtonsVerticalStackView.addArrangedSubview(myProfileButton)
        dashboardButtonsVerticalStackView.addArrangedSubview(allHubsButton)
        dashboardButtonsVerticalStackView.addArrangedSubview(partnershipsButton)
        dashboardButtonsVerticalStackView.addArrangedSubview(corporateSponsorsButton)
        dashboardButtonsVerticalStackView.addArrangedSubview(ngoSponsorsButton)
        
        dashboardButtonsVerticalStackView.anchor(top: welcomeUserTextLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 8, paddingLeft: 30, paddingRight: 30)
        
        buttonSetup()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
