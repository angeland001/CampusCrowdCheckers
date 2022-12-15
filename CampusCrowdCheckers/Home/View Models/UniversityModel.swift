//
//  UniversityModel.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/17/22.
//

import Foundation

struct University: Identifiable, Codable {
    var id: Int
    var name: String
    var colors: String
    var type: String
    var address: String
    var city: String
    var state: String
    var stateCode: String
    var zip: String
    var country: String
    var countryCode: String
    var website: String
    
}


