//
//  PSClient.swift
//  PyramidScheme
//
//  Created by Tim Isenman on 6/11/18.
//  Copyright © 2018 Timothy Isenman. All rights reserved.
//
// Test commit


import Foundation

class PSClient: NSObject {
    
    let shared = PSClient()
    
    override init() {
        super.init()
    }
    
    func loginWith(username: String, password: String, completionHandler: @escaping(_ data: [[String:AnyObject]]?, _ success: Bool?, _ error: String?) -> Void) {
        var components = URLComponents()
        let url = components.url
        
        let request = URLRequest(url: url!)
        let session = URLSession.shared
        
        let task = session.dataTask(with: request) { (data, response, error) in
            guard error == nil else {
                completionHandler(nil, nil, "Got yoself an error, bruh: \(error?.localizedDescription ?? "Some error")")
                return
            }
            
            guard let data = data else {
                completionHandler(nil, nil, "Unable to download Flickr data.")
                return
            }
            
            var parsedResult: [String:AnyObject]!
            do {
                parsedResult = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String:AnyObject]
            }
            
            
        }
        task.resume()
        
    }
    
    func getBalance() {
        
    }
    
    func getTransactionHistory() {
        
    }
    
}
