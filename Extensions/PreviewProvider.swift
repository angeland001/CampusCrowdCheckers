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
    
    let school = University(id: 8928,
                            name: "UTC",
                            colors: "Blue, Gold",
                            type: "Public",
                            //address: "615 McCallie Ave",
                            city: "Chattanooga",
                            state: "Tennessee",
                            stateCode: "TN",
                            zip: "37403",
                            country: "United States",
                            countryCode: "US",
                            website: "http://www.utc.edu/")
    
    
}
