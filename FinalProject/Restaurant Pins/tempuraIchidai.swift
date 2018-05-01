//
//  tempuraIchidai.swift
//  FinalProject
//
//  Created by Mariah Hortillano on 5/1/18.
//  Copyright © 2018 Mariah Hortillano. All rights reserved.
//

import UIKit
import MapKit

class tempuraIchidai: NSObject, MKAnnotation  {

    //create 3 variables hold data for the annotation
    let tempuraIchidaiTitle: String?
    let tempuraIchidaiType: String
    let coordinate: CLLocationCoordinate2D
    
    //initialize the MKAnnotation object
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.tempuraIchidaiTitle = title
        self.tempuraIchidaiType = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return tempuraIchidaiTitle
    }
    
}
