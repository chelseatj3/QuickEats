//
//  Businesses.swift
//  QuickEats
//
//  Created by Chelsea Thiel-Jones on 2017-06-01.
//  Copyright © 2017 chelseatj3. All rights reserved.
//

import UIKit

class Business: NSObject {
    let name: String?
    let imageURL: URL?
    
    init(dictionary: NSDictionary) {
        self.name = dictionary["name"] as? String
        let imageURLString = dictionary["image_URL"] as? String
        if imageURLString != nil {
            if let urlString = URL(string: imageURLString!) {
                self.imageURL = urlString
            } else {
                self.imageURL = nil
            }
        } else {
            self.imageURL = nil
        }
    }
}
