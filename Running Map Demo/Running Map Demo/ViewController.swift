//
//  ViewController.swift
//  Running Map Demo
//
//  Created by Abe on 4/27/16.
//  Copyright © 2016 Abe. All rights reserved.
//


import MapKit
import UIKit


class ViewController: UIViewController, MKMapViewDelegate{
    
    
    @IBOutlet var map: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

