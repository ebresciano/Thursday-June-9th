//
//  Starwars.swift
//  Starwars Api
//
//  Created by Eva Marie Bresciano on 6/9/16.
//  Copyright © 2016 Eva Bresciano. All rights reserved.
//

import Foundation

class Starwars {
    
    let name: String
    
    init(name: String) {
        
        self.name = name
        
    }
    
         private let kName = "name"
        
    init?(dictionary: [String:AnyObject]) {
            guard let name = dictionary[kName] as? String else {
                return nil
            }
        
        self.name = name 
            
        }
    }
