//
//  MyProfileViewController.swift
//  labs-ios-starter
//
//  Created by Stephanie Ballard on 12/18/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    private func configureUI() {
        navigationController?.navigationBar.isHidden = false
        view.backgroundColor = .red
    }
}