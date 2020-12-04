//
//  Network.swift
//  labs-ios-starter
//
//  Created by Stephanie Ballard on 12/3/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()
    
  private(set) lazy var apollo = ApolloClient(url: URL(string: "http://35.208.9.187:9294/ios-api-1")!)
}
