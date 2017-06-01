//
//  DataManager.swift
//  QuickEats
//
//  Created by Chelsea Thiel-Jones on 2017-05-21.
//  Copyright © 2017 chelseatj3. All rights reserved.
//

import UIKit
import LocalAuthentication

class DataManager: NSObject {
    static func checkTouchID() -> UIAlertController {
        let myContext = LAContext()
        let myLocalizedReasonString = "Touch ID Authentication"
        var authError: NSError? = nil
        var message = ""
        if myContext.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &authError) {
            myContext.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: myLocalizedReasonString) { (success, evaluateError) in
                if (success) {
                    // User authenticated successfully, take appropriate action
                    message = "Touch ID authentication successful"
                } else {
                    // User did not authenticate successfully, look at error and take appropriate action
                    message = "Touch ID authentication unsuccessful"
                }
            }
        } else {
            // Could not evaluate policy; look at authError and present an appropriate message to user
            message = "Touch ID authentication successful"
        }
        let alert = Utils.presentAlert(message: message)
        return alert
    }
}


//    if myContext.canEvaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, error: &authError) {
//    myContext.evaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, localizedReason: myLocalizedReasonString) { (success, evaluateError) in
//    if (success) {
//    // User authenticated successfully, take appropriate action
//    } else {
//    // User did not authenticate successfully, look at error and take appropriate action
//    }
//    }
//    } else {
//    // Could not evaluate policy; look at authError and present an appropriate message to user
//    }
//} else {
//    // Fallback on earlier versions
//}

//    static let sharedInstance = DataManager()
//
//    let authenticationContext = LAContext()
//
//    func authenticateUser() -> UIAlertController {
//        var error: NSError?
//
////        want to give users the opportunity to use either id or password
//
//        if self.authenticationContext.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error) {
//            let reason = "Identification"
//
//            self.authenticationContext.evaluatePolicy(.deviceOwnerAuthentication,
//                                                      localizedReason: reason,
//                                                      reply: {[unowned self] (success, error) -> Void in
//                                                        if (success) {
//                                                            self.navigateToAuthenticatedViewController()
//
//
//                                                        } else {
////                                                            add function to check error
//
//                                                        }
//
//            })
//
//        } else {
//            print("Unable to authenticate touch id")
//
//        }
//    }



//    func navigateToAuthenticatedViewController() {
////        return true
//    }


