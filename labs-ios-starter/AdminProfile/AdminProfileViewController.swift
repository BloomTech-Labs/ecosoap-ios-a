//
//  AdminProfileViewController.swift
//  labs-ios-starter
//
//  Created by Patrick Millet on 12/7/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class AdminProfileViewController: UIViewController {
    
    //MARK: Outlets
    
    @IBOutlet weak var firstNameOutlet: UILabel!
    @IBOutlet weak var middleNameOutlet: UILabel!
    @IBOutlet weak var lastNameOutlet: UILabel!
    @IBOutlet weak var emailOutlet: UILabel!
    @IBOutlet weak var skypeOutlet: UILabel!
    @IBOutlet weak var phoneNumberOutlet: UILabel!
    
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
