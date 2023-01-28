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
    
    let school = University(id: 5, name: "Tennessee Tech University", colors: ["purple", "yellow"], type: "Public", city: "Cookeville", state: "Tennessee", zip: "38505", website: "https://www.tntech.edu/", schoolVenues: [SchoolVenues(VenueName: "Starbucks", type: "Cafe", colorOfVenue: "green", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Chick-Fil-A", type: "Fast Food", colorOfVenue: "red", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "8:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Einstein Bros Bagels", type: "Bakery", colorOfVenue: "orange", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Au Bon Pain", type: "Fast Food", colorOfVenue: "white", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:30AM", VenueClosingHours: "3:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Tu Taco", type: "Fast Food", colorOfVenue: "white", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")])])
                    
    let schoolVenue = SchoolVenues(VenueName: "Chick-Fil-A", type: "Fast Food", colorOfVenue: "red", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "8:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")])
    
    let Venue = VenueElement(forecast: true, processed: true, venue_address: "334 Market St Chattanooga, TN 37402 United States", venue_foot_traffic_forecast: [VenueFootTrafficForecast(day_info: DayInfo(day_int: 0, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 0, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0]),VenueFootTrafficForecast(day_info: DayInfo(day_int: 1, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 1, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0]),VenueFootTrafficForecast(day_info: DayInfo(day_int: 2, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 2, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0]),VenueFootTrafficForecast(day_info: DayInfo(day_int: 3, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 3, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0]),VenueFootTrafficForecast(day_info: DayInfo(day_int: 4, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 4, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0]),VenueFootTrafficForecast(day_info: DayInfo(day_int: 5, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 5, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0]),VenueFootTrafficForecast(day_info: DayInfo(day_int: 6, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 6, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0])], venue_id: "ven_456a5f6766346d4b6f483652674959654e32356334336d4a496843", venue_lat: 35.0525019, venue_lon: -85.3093192, venue_name: "The Bitter Alibi")
    
    
}
