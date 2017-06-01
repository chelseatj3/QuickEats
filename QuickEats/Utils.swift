//
//  Utils.swift
//  QuickEats
//
//  Created by Chelsea Thiel-Jones on 2017-05-31.
//  Copyright © 2017 chelseatj3. All rights reserved.
//

import Foundation
import UIKit

class Utils: NSObject {
    static func presentAlert(message: String) -> UIAlertController {
        let alert = UIAlertController(title: "Touch ID Authentication", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        return alert
    }
    
}
