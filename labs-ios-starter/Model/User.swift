//
//  User.swift
//  labs-ios-starter
//
//  Created by Stephanie Ballard on 12/28/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import Foundation

struct User: Codable {
    var firstName: String
    var middleName: String?
    var lastName: String
    var email: String
    var phone: String
    var skype: String
}
