//
//  EcoSoapBankApiController.swift
//  labs-ios-starter
//
//  Created by Stephanie Ballard on 12/28/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit

class EcoSoapBankApiController {
    
    // MARK: - Enums -
    
    enum HTTPMethod: String {
        case get = "GET"
        case put = "PUT"
        case post = "POST"
        case delete = "DELETE"
    }
    
    enum NetworkError: Error {
        case failedSignUp
        case failedSignIn
        case failedFetch // ☑️
        case noData
        case badData
        case noAuth
        case badAuth // ☑️
        case otherError
        case noDecode // ☑️
        case badImage
        case noEncode
    }
    
    // MARK: - Properties -
    
    var user: User?
    
    typealias CompletionHandler = (Result<Bool, NetworkError>) -> Void
    private let baseURL = URL(string: "https://ecosoapbank-96311-default-rtdb.firebaseio.com/")!
    
    private lazy var jsonDecoder = JSONDecoder()
    
    private lazy var jsonEncoder: JSONEncoder = {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        return encoder
    }()
    
    // MARK: - Network Calls -

    func fetchUserDetails(_ userId: String, completion: @escaping (User?) -> Void) {
        let userURL = baseURL.appendingPathComponent("-MQjQfD_-xYj3p9ykl_7")
                             .appendingPathComponent("users")
                             .appendingPathComponent("0")
                             .appendingPathExtension("json")
        var request = URLRequest(url: userURL)
        request.httpMethod = HTTPMethod.get.rawValue
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error fetching users with error: \(error)")
                completion(nil)
                return
            }
            
            if let response = response as? HTTPURLResponse,
                response.statusCode != 200 {
                print(response)
                completion(nil)
                return
            }
            
            guard let data = data else {
                completion(nil)
                return
            }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print("This is the json: \(json)")
                self.user = try self.jsonDecoder.decode(User.self, from: data)
                print(self.user?.firstName as Any)
                completion(nil)
            } catch {
                print("Error decoding user details: \(error)")
                completion(nil)
            }
        }.resume()
    }
}
