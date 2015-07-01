//
//  ViewController.swift
//  GooglePlacesSearchController
//
//  Created by Dmitry Shmidt on 6/28/15.
//  Copyright (c) 2015 Dmitry Shmidt. All rights reserved.
//

import UIKit
import CoreLocation
import GooglePlacesSearchController

class ViewController: UIViewController {
    let GoogleMapsAPIServerKey = "YOUR KEY"
    var controller: GooglePlacesSearchController!
    
    @IBOutlet weak var tempSearchBar: UISearchBar!
    @IBOutlet weak var searchBarContainer: UIView!
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        //If you want to use autocompletion for specific coordinate and radius (in meters)
//        let coord = CLLocationCoordinate2D(latitude: 55.751244, longitude: 37.618423)
//        controller = GooglePlacesSearchController(
//            apiKey: GoogleMapsAPIServerKey,
//            placeType: PlaceType.Address,
//            coordinate: coord,
//            radius: 10
//        )

        controller = GooglePlacesSearchController(
            apiKey: GoogleMapsAPIServerKey,
            placeType: PlaceType.Address
        )
        
        let searchbar = controller.searchBar
        controller.searchBar.searchBarStyle = .Minimal
        
        addSearchBar(searchbar)
        
        controller.didSelectGooglePlace {[unowned self] (place) -> Void in
            println(place.description)
            
            //Dismiss Search
            self.controller.active = false
        }
    }
    
    func addSearchBar(searchBar: UISearchBar){
        searchBarContainer.addSubview(searchBar)
        searchBar.sizeToFit()

//        searchBar.setSearchFieldBackgroundImage(UIImage(named: "PoweredByGoogle"), forState: UIControlState.Normal)
//        searchBar.setBackgroundImage(UIImage(named: "PoweredByGoogle"), forBarPosition: UIBarPosition.Any, barMetrics: UIBarMetrics.Default)
//        searchbar.backgroundImage =
        
        //FIXME: Adding searchbar using constraints will result in crash when searchbar will be tapped.
        //        searchBar.setTranslatesAutoresizingMaskIntoConstraints(false)
        //        //Views to add constraints to
        //        let views = Dictionary(dictionaryLiteral: ("view", searchBarContainer), ("searchbar", searchBar))
        //
        //        //Horizontal constraints
        //        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:|[searchBar]|", options: nil, metrics: nil, views: views)
        //        self.searchBarContainer.addConstraints(horizontalConstraints)
        
        //Vertical constraints
        //        let leftConstraint = NSLayoutConstraint(item:searchbar,
        //            attribute:NSLayoutAttribute.Top,
        //            relatedBy:NSLayoutRelation.Equal,
        //            toItem:self.view,
        //            attribute:NSLayoutAttribute.Top,
        //            multiplier:1.0,
        //            constant:100);
        //
        //
        //        self.view.addConstraint(leftConstraint)
        //        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|-100-[searchBar(44.0)]", options: nil, metrics: nil, views: views)
        //        self.searchBarContainer.addConstraints(verticalConstraints)
    }
}