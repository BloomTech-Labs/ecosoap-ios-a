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
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        //stackView.addArrangedSubview(view)
        return stackView
    }()
    
    private let myProfileButton: UIButton = {
        let button = UIButton()
        
        return button
    }()

    // MARK: - LifeCycle Functions -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    // MARK: - Helper Functions -
//    private func buttonSetup() {
//        for button in adminButtons {
//            button.setWidth(width: 190)
//            button.setHeight(height: 120)
//            button.layer.cornerRadius = 12.0
//            button.layer.borderWidth = 1.0
//            button.layer.borderColor = UIColor.white.cgColor
//            button.tintColor = .white
//            button.titleLabel?.font = UIFont(name: "Futura", size: 15)
//
//            // Shadow
//            button.layer.shadowColor = UIColor.gray.cgColor
//            button.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
//            button.layer.shadowRadius = 5.0
//            button.layer.shadowOpacity = 1.0
//        }
//    }
    
    private func configureUI() {
        navigationController?.navigationBar.isHidden = true
        
        UIHelper.configureGradientLayer(view: view)
        
        view.addSubview(welcomeUserTextLabel)
        welcomeUserTextLabel.centerX(inView: view)
        welcomeUserTextLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 20)
        welcomeUserTextLabel.setDimensions(height: 150, width: 250)
        
        view.addSubview(dashboardButtonsVerticalStackView)
        
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
