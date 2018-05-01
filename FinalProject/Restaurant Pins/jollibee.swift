//
//  jollibee.swift
//  FinalProject
//
//  Created by Mariah Hortillano on 5/1/18.
//  Copyright © 2018 Mariah Hortillano. All rights reserved.
//

import UIKit
import MapKit

class jollibee: NSObject, MKAnnotation {

    //create 3 variables hold data for the annotation
    let jollibeeTitle: String?
    let jollibeeType: String
    let coordinate: CLLocationCoordinate2D
    
    //initialize the MKAnnotation object
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.jollibeeTitle = title
        self.jollibeeType = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return jollibeeTitle
    }
    
}
