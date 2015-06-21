//
//  FirstViewController.swift
//  MyLocations
//
//  Created by Brad Gray on 6/20/15.
//  Copyright (c) 2015 Brad Gray. All rights reserved.
//

import UIKit
import CoreLocation

class CurrentLocationViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    
    var location: CLLocation?

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
   
    @IBOutlet weak var longitudeLabel: UILabel!
    
    
    
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var tagButton: UIButton!
    @IBOutlet weak var getButton: UIButton!
    
    @IBAction func getLocation() {
   let authStatus = CLLocationManager.authorizationStatus()
        
        if authStatus == .NotDetermined {
            locationManager.requestWhenInUseAuthorization()
            return
        }
        if authStatus == .Denied || authStatus == .Restricted {
            showLocationServicesDeniedAlert()
            return
        }
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.startUpdatingLocation()
        
        
    }
    //Mark : - CLLocationManagerDelegate
    
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        println("didFailWithError \(error)")
    }
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
   let newLocation = locations.last as! CLLocation
        
        println("didUpdateLocations \(newLocation)")
        location = newLocation
        updateLabels()
        
    }
    func showLocationServicesDeniedAlert() {
    let alert = UIAlertController(title: "Location Services Disabled", message: "enable location services if you want to use my awesome app", preferredStyle: .Alert)
    let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
    alert.addAction(okAction)
    
    presentViewController(alert, animated: true, completion: nil)
        
    }
    func updateLabels() {
        if let location = location {
            latitudeLabel.text = String(format: "%.8f", location.coordinate.latitude)
            longitudeLabel.text = String(format: "%.8f", location.coordinate.longitude)
            tagButton.hidden = false
            messageLabel.text = ""
        } else {
            latitudeLabel.text = ""
            longitudeLabel.text = ""
            addressLabel.text = ""
            tagButton.hidden = true
            messageLabel.text = "tap 'Get My Location' to Start"
        }
        }



}






