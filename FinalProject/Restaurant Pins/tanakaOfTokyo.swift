//
//  tanakaOfTokyo.swift
//  FinalProject
//
//  Created by Mariah Hortillano on 4/16/18.
//  Copyright © 2018 Mariah Hortillano. All rights reserved.
//

import UIKit
import MapKit

class tanakaOfTokyo: NSObject, MKAnnotation {

    //create 3 variables hold data for the annotation
    let tanakaOfTokyoTitle: String?
    let tanakaOfTokyoType: String
    let coordinate: CLLocationCoordinate2D
    
    //initialize the MKAnnotation object
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.tanakaOfTokyoTitle = title
        self.tanakaOfTokyoType = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return tanakaOfTokyoTitle
    }
}
