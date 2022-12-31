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
    
    
}
