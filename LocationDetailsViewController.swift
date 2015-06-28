//
//  LocationDetailsViewController.swift
//  MyLocations
//
//  Created by Brad Gray on 6/26/15.
//  Copyright (c) 2015 Brad Gray. All rights reserved.
//

import UIKit

class LocationDetailsViewController: UITableViewController {
    
    
     @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBAction func done() {
        dismissViewControllerAnimated(true, completion: nil)
        }
    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
}