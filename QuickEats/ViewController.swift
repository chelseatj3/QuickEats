//
//  ViewController.swift
//  QuickEats
//
//  Created by Chelsea Thiel-Jones on 2017-05-20.
//  Copyright © 2017 chelseatj3. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    private let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationManager.delegate = self
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
        let alert = Utils.presentAlert(message: "Unable to find location")
        self.present(alert, animated: true, completion: nil)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        return
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func payMoney(_ sender: UIButton) {
//        have alert appear after the message has gone through
        let alert = DataManager.checkTouchID()
        self.present(alert, animated: true, completion: nil)
    }
}

