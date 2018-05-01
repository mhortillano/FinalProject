//
//  Shirokiya.swift
//  FinalProject
//
//  Created by Mariah Hortillano on 5/1/18.
//  Copyright © 2018 Mariah Hortillano. All rights reserved.
//

import UIKit
import MapKit

class Shirokiya: NSObject, MKAnnotation {

    //create 3 variables hold data for the annotation
    let ShirokiyaTitle: String?
    let ShirokiyaType: String
    let coordinate: CLLocationCoordinate2D
    
    //initialize the MKAnnotation object
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.ShirokiyaTitle = title
        self.ShirokiyaType = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return ShirokiyaTitle
    }
    
}
