//
//  ViewController.swift
//  GooglePlacesSearchController
//
//  Created by Dmitry Shmidt on 6/28/15.
//  Copyright (c) 2015 Dmitry Shmidt. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
import GooglePlacesSearchController

class ViewController: UIViewController {
    let GoogleMapsAPIServerKey = "YOUR KEY"

    @IBAction func searchAddress(sender: UIBarButtonItem) {
        
        let controller = GooglePlacesSearchController(
            apiKey: GoogleMapsAPIServerKey,
            placeType: PlaceType.Address
        )
        
        //Or ff you want to use autocompletion for specific coordinate and radius (in meters)
        //        let coord = CLLocationCoordinate2D(latitude: 55.751244, longitude: 37.618423)
        //        controller = GooglePlacesSearchController(
        //            apiKey: GoogleMapsAPIServerKey,
        //            placeType: PlaceType.Address,
        //            coordinate: coord,
        //            radius: 10
        //        )
        
        controller.didSelectGooglePlace { (place) -> Void in
            print(place.description)
            
            //Dismiss Search
            controller.active = false
        }
        
        presentViewController(controller, animated: true, completion: nil)
    }
}