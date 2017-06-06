//
//  ViewController.swift
//  Pokemon2
//
//  Created by Abe on 6/5/17.
//  Copyright © 2017 Abe. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var MapView: MKMapView!
    
    var updateCount = 0
    
    var manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        manager.delegate = self as CLLocationManagerDelegate
        
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse
        {
         print("Ready to Go")
            
            MapView.showsUserLocation = true
            manager.startUpdatingLocation()
            
        }else{
        
        manager.requestWhenInUseAuthorization()
        
        
        }
        
            }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        
        if updateCount < 1 {
        
        let region = MKCoordinateRegionMakeWithDistance(manager.location!.coordinate, 2000,2000)
        
        MapView .setRegion(region, animated: false)
        
        updateCount += 1
        
        
        print("We made it")
    }




    }

}

