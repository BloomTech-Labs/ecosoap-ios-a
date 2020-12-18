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
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let topHorizontalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        return stackView
    }()
    
    private let middleHorizontalStackView: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let bottomHorizontalStackView: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private var dashboardButtons = [UIButton]()
    
    // MARK: - LifeCycle Functions -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    // MARK: - Helper Functions -
    
    private func buttonSetup() -> [UIButton] {
        let titles = ["My Profile", "All Hubs", "Partnerships", "Corporate Sponsors", "NGO Sponsors"]
        var buttons = [UIButton]()
        titles.forEach {
            let button = UIButton()
            button.setTitle($0, for: .normal)
            button.setWidth(width: 190)
            button.setHeight(height: 120)
            button.layer.cornerRadius = 12.0
            button.layer.borderWidth = 1.0
            button.layer.borderColor = UIColor.white.cgColor
            button.tintColor = .white
            button.titleLabel?.font = UIFont(name: "Futura", size: 15)
            UIHelper.configureShadow(view: button, color: UIColor.black.cgColor)
            buttons.append(button)
        }
            return buttons
    }
    
    private func configureUI() {
        navigationController?.navigationBar.isHidden = true
        
        UIHelper.configureGradientLayer(view: view)
        dashboardButtons = buttonSetup()
        view.addSubview(welcomeUserTextLabel)
        view.addSubview(dashboardButtonsVerticalStackView)
        view.addSubview(topHorizontalStackView)
        view.addSubview(middleHorizontalStackView)
        view.addSubview(bottomHorizontalStackView)
        view.addSubview(dashboardButtons[0])
        view.addSubview(dashboardButtons[1])
        view.addSubview(dashboardButtons[2])
        view.addSubview(dashboardButtons[3])
        view.addSubview(dashboardButtons[4])
        
        welcomeUserTextLabel.centerX(inView: view)
        welcomeUserTextLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 20)
        welcomeUserTextLabel.setDimensions(height: 150, width: 250)
        
        dashboardButtonsVerticalStackView.addArrangedSubview(dashboardButtons[0])
        topHorizontalStackView.addArrangedSubview(dashboardButtons[0])
        
        middleHorizontalStackView.addArrangedSubview(dashboardButtons[1])
        middleHorizontalStackView.addArrangedSubview(dashboardButtons[2])
        bottomHorizontalStackView.addArrangedSubview(dashboardButtons[3])
        bottomHorizontalStackView.addArrangedSubview(dashboardButtons[4])
        
        dashboardButtonsVerticalStackView.addArrangedSubview(topHorizontalStackView)
        dashboardButtonsVerticalStackView.addArrangedSubview(middleHorizontalStackView)
        dashboardButtonsVerticalStackView.addArrangedSubview(bottomHorizontalStackView)
        
        dashboardButtonsVerticalStackView.anchor(top: welcomeUserTextLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 8, paddingLeft: 30, paddingRight: 30)
    }
}
