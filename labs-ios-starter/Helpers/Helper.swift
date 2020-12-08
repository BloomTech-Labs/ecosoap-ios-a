//
//  Helper.swift
//  labs-ios-starter
//
//  Created by Stephanie Ballard on 12/8/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class Helper {
    
    static func configureGradientLayer(view: UIView) {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.esbGreen?.lighter(componentDelta: 0.4).cgColor, UIColor.esbGreen?.cgColor]
        gradient.locations = [0, 1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
    }
}
