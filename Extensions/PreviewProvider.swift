//
//  PreviewProvider.swift
//  CampusCrowdCheckers
//
//  
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
    
    let school = University(id: 5, name: "Tennessee Tech", colors: ["purple", "yellow"], type: "Public", city: "Cookeville", state: "Tennessee", zip: "38505", website: "https://www.tntech.edu/", schoolVenues: [SchoolVenues(VenueName: "Starbucks", type: "Cafe", colorOfVenue: "green", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Chick-Fil-A", type: "Fast Food", colorOfVenue: "red", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "8:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Einstein Bros Bagels", type: "Bakery", colorOfVenue: "orange", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Au Bon Pain", type: "Fast Food", colorOfVenue: "white", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:30AM", VenueClosingHours: "3:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Tu Taco", type: "Fast Food", colorOfVenue: "white", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")])])
                    
    let schoolVenue = SchoolVenues(VenueName: "Chick-Fil-A", type: "Fast Food", colorOfVenue: "red", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "8:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")])
    
    
    
    
}
