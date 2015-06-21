//
//  FirstViewController.swift
//  MyLocations
//
//  Created by Brad Gray on 6/20/15.
//  Copyright (c) 2015 Brad Gray. All rights reserved.
//

import UIKit

class CurrentLocationViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
   
    @IBOutlet weak var longitudeLabel: UILabel!
    
    
    
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var tagButton: UIButton!
    @IBOutlet weak var getButton: UIButton!
    
    @IBAction func getLocation() {
    }

}

