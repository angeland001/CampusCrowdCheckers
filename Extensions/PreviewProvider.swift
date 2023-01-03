//
//  PreviewProvider.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/15/22.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
    
}

class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    private init() {
        
    }
    
    let school = University(id: 4, name: "The University of Tennessee at Chattanooga", colors: "Yellow, Blue", type: "Public", city: "Chattanooga", state: "Tennessee", zip: "37403", website: "http://www.utc.edu/")
    
    let Venue = VenueElement(forecast: true, processed: true, venue_address: "334 Market St Chattanooga, TN 37402 United States", venue_foot_traffic_forecast: [], venue_id: "ven_456a5f6766346d4b6f483652674959654e32356334336d4a496843", venue_lat: 35.0525019, venue_lon: -85.3093192, venue_name: "The Bitter Alibi")
    
    
}
