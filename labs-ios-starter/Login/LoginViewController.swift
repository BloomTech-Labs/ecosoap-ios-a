//
//  LoginViewController.swift
//  LabsScaffolding
//
//  Created by Spencer Curtis on 7/23/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit
import OktaAuth

class LoginViewController: UIViewController {
    
    // MARK: - Properties -
    
    let profileController = ProfileController.shared
    
    private let ecoSoapBankLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ecoSoapBankLogo")
        return imageView
    }()
    
    private let missionStatementTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Our Mission:\n" + "\n" + "Saving, sanitizing, and supplying\n" + "RECYCLED SOAP\n" + "\n" + "for the developing world"
        label.textColor = UIColor.esbGreen
        label.numberOfLines = 0
        return label
    }()
    
    private let dontHaveAccountButton: UIButton = {
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(string: "Don't have an account?  ",
                                                        attributes: [.font : UIFont.systemFont(ofSize: 16), .foregroundColor : UIColor.white])
        attributedTitle.append(NSAttributedString(string: "Sign Up",
                                                  attributes: [.font : UIFont.boldSystemFont(ofSize: 16), .foregroundColor : UIColor.white]))
        
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.addTarget(self, action: #selector(handleShowSignUp), for: .touchUpInside)
        
        return button
    }()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .darkContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        NotificationCenter.default.addObserver(forName: .oktaAuthenticationSuccessful,
                                               object: nil,
                                               queue: .main,
                                               using: checkForExistingProfile)
        
        NotificationCenter.default.addObserver(forName: .oktaAuthenticationExpired,
                                               object: nil,
                                               queue: .main,
                                               using: alertUserOfExpiredCredentials)
        
    }
    
    // MARK: - Actions
    
    @IBAction func signIn(_ sender: Any) {
        UIApplication.shared.open(ProfileController.shared.oktaAuth.identityAuthURL()!)
    }
    
    // MARK: - UI Configuration Methods -
    
    func configureUI() {
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        configureGradientLayer()
        
        view.addSubview(ecoSoapBankLogo)
        ecoSoapBankLogo.centerX(inView: view)
        ecoSoapBankLogo.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 30)
        ecoSoapBankLogo.setDimensions(height: 140, width: 150)
        
        ecoSoapBankLogo.layer.shadowColor = UIColor.black.cgColor
        ecoSoapBankLogo.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        ecoSoapBankLogo.layer.shadowRadius = 5.0
        ecoSoapBankLogo.layer.shadowOpacity = 1.0
        
        view.addSubview(missionStatementTextLabel)
        missionStatementTextLabel.anchor(top: ecoSoapBankLogo.bottomAnchor, left: view.leftAnchor, paddingTop: 30, paddingLeft: 50, paddingRight: 50, width: 250, height: 100)
        
        view.addSubview(dontHaveAccountButton)
        dontHaveAccountButton.anchor(left: view.leftAnchor,
                                     bottom: view.safeAreaLayoutGuide.bottomAnchor,
                                     right: view.rightAnchor,
                                     paddingLeft: 32,
                                     paddingRight: 32)
    }
    
    func configureGradientLayer() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.esbGreen?.lighter(componentDelta: 0.4).cgColor, UIColor.esbGreen?.cgColor]
        gradient.locations = [0, 1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
    }
    
    @objc func handleShowSignUp() {
        
    }
    
    // MARK: - Private Methods
    
    private func alertUserOfExpiredCredentials(_ notification: Notification) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.presentSimpleAlert(with: "Your Okta credentials have expired",
                           message: "Please sign in again",
                           preferredStyle: .alert,
                           dismissText: "Dimiss")
        }
    }
    
    // MARK: Notification Handling
    
    private func checkForExistingProfile(with notification: Notification) {
        checkForExistingProfile()
    }
    
    private func checkForExistingProfile() {
        profileController.checkForExistingAuthenticatedUserProfile { [weak self] (exists) in
            
            guard let self = self,
                self.presentedViewController == nil else { return }
            
            if exists {
                self.performSegue(withIdentifier: "ShowDetailProfileList", sender: nil)
            } else {
                self.performSegue(withIdentifier: "ModalAddProfile", sender: nil)
            }
        }
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ModalAddProfile" {
            guard let addProfileVC = segue.destination as? AddProfileViewController else { return }
            addProfileVC.delegate = self
        }
    }
}

// MARK: - Add Profile Delegate

extension LoginViewController: AddProfileDelegate {
    func profileWasAdded() {
        checkForExistingProfile()
    }
}
