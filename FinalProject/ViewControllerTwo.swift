//
//  ViewControllerTwo.swift
//  FinalProject
//
//  Created by Mariah Hortillano on 4/16/18.
//  Copyright © 2018 Mariah Hortillano. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewControllerTwo: UIViewController {
  
    @IBOutlet var mapView: MKMapView!
    //set intial location to ala moana
    let initialLocation = CLLocation(latitude: 21.29125, longitude: -157.844311)
    //set region radius around ala moana to 1000m
    let regionRadius: CLLocationDistance = 500
    
    override func viewDidLoad() {
        super.viewDidLoad()

    //Initial Location set to Ala Moana Mall
     centerMapOnLocation(location: initialLocation)
     
        //create Genki Sushi object and set all the arguments to each of the three parameters
        let genkiSushiPlace = genkiSushi(title: "Genki Sushi", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.291104, longitude: -157.843462))
        mapView.addAnnotation(genkiSushiPlace)
        
        //create Tanaka of Tokyo object and set all the arguments to each of the three parameters
        let tanakaOfTokyoPlace = tanakaOfTokyo(title: "Tanaka of Tokyo", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.2906, longitude: -157.8431))
        mapView.addAnnotation(tanakaOfTokyoPlace)
        
        //create Doraku object and set all the arguments to each of the three parameters
        let dorakuPlace = doraku(title: "Doraku", type: "Japanese", coordinate: CLLocationCoordinate2D(latitude: 21.2969, longitude: -157.85151))
        mapView.addAnnotation(dorakuPlace)
        
        //create Bubba Gump object and set all the arguments to each of the three parameters
        let bubbaGumpShrimpCOPlace = bubbaGumpShrimpCO(title: "Bubba Gump Shrimp Co.", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.291038, longitude: -157.84317))
        mapView.addAnnotation(bubbaGumpShrimpCOPlace)
        
        
        // Do any additional setup after loading the view.
    }
    
    //Set Ala Moana Mall on the map
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
