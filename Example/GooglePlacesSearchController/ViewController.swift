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
    let GoogleMapsAPIServerKey = "YOUR_KEY"

    @IBAction func searchAddress(_ sender: UIBarButtonItem) {
        
        let controller = GooglePlacesSearchController(
            apiKey: GoogleMapsAPIServerKey,
            placeType: PlaceType.address
        )
        
//        Or if you want to use autocompletion for specific coordinate and radius (in meters)        
//        let coord = CLLocationCoordinate2D(latitude: 55.751244, longitude: 37.618423)
//        let controller = GooglePlacesSearchController(
//            apiKey: GoogleMapsAPIServerKey,
//            placeType: PlaceType.Address,
//            coordinate: coord,
//            radius: 10
//        )
        
        controller.didSelectGooglePlace { (place) -> Void in
            print(place.description)
            
            //Dismiss Search
            controller.isActive = false
        }
        
        present(controller, animated: true, completion: nil)
    }
}
