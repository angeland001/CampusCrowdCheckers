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
    var city: String
    var state: String
    var zip: String
    var website: String
    
    
    static let universities: [University] = [
        
        University(id: 1, name: "Vanderbilt University", colors: "Black, Gold", type: "Private", city: "Nashville", state: "Tennessee", zip: "37235", website: "http://www.vanderbilt.edu/"),
        University(id: 2, name: "The University of Tennessee, Knoxville"
, colors: "Orange, White", type: "Public", city: "Knoxville", state: "Tennessee", zip: "37996", website: "https://www.utk.edu/"),
        University(id: 3, name: "The University of Tennessee at Martin", colors: "", type: "Public", city: "Martin", state: "Tennessee", zip: "38237", website: "http://www.utm.edu/"),
        University(id: 4, name: "The University of Tennessee at Chattanooga", colors: "Yellow, Blue", type: "Public", city: "Chattanooga", state: "Tennessee", zip: "37403", website: "http://www.utc.edu/"),
        University(id: 5, name: "Tennessee Tech University", colors: "Purple, Gold", type: "Public", city: "Cookeville", state: "Tennessee", zip: "38505", website: "https://www.tntech.edu/"),
        University(id: 6, name: "Middle Tennessee State University", colors: "Royal Blue, White"
, type: "Public", city: "Murfreesboro", state: "Tennessee", zip: "37132", website: "http://www.mtsu.edu/"),
        University(id: 7, name: "East Tennessee State University", colors: "Navy Blue, Gold", type: "Public", city: "Johnson City", state: "Tennessee", zip: "37614", website: "https://www.etsu.edu/"),
        University(id: 8, name: "Belmont University", colors: "Red, Blue", type: "Private", city: "Nashville", state: "Tennessee", zip: "37212", website: "http://www.belmont.edu/")
        
    ]
}


