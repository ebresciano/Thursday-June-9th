//
//  StarwarsController.swift
//  Starwars Api
//
//  Created by Eva Marie Bresciano on 6/9/16.
//  Copyright © 2016 Eva Bresciano. All rights reserved.
//

import Foundation

class StarwarsController {
    
   static let baseURL = NSURL(string: "http://swapi.co/api/people/13")
    
    static func getName(name: String, completion: (starwars: [Starwars]) -> Void) {
        guard let url = baseURL else {
            completion (starwars: [])
            return
        }
        
        
        NetworkController.performRequestForURL(url, httpMethod: .Get) { (data, error) in
            guard let data = data,
            let dictionary = (try? NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? [String:AnyObject]),
                let starwarsDictionary = dictionary?["results"] as? [[String:AnyObject]] else {
                    
                    print("could not serialize json")
                    completion (starwars: [])
                    return
                    
            }
            
        }
    }
}