//
//  AdminProfileDetailViewController.swift
//  labs-ios-starter
//
//  Created by Patrick Millet on 12/7/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class AdminProfileDetailViewController: UIViewController {
    
    //MARK: Outlets

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var middleNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var skypeTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
