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
    
    let Venue = VenueElement(forecast: true, processed: true, venue_address: "334 Market St Chattanooga, TN 37402 United States", venue_foot_traffic_forecast: [VenueFootTrafficForecast(day_info: DayInfo(day_int: 0, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 0, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0]),VenueFootTrafficForecast(day_info: DayInfo(day_int: 1, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 0, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0]),VenueFootTrafficForecast(day_info: DayInfo(day_int: 2, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 0, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0]),VenueFootTrafficForecast(day_info: DayInfo(day_int: 3, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 0, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0]),VenueFootTrafficForecast(day_info: DayInfo(day_int: 4, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 0, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0]),VenueFootTrafficForecast(day_info: DayInfo(day_int: 5, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 0, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0]),VenueFootTrafficForecast(day_info: DayInfo(day_int: 6, day_max: 58, day_mean: 45, day_rank_max: 5, day_rank_mean: 4, venueClosed: 3, venueOpen: 18), day_int: 0, day_raw: [0,0,0,0,0,0,0,0,0,0,0,0,30,45,50,50,55,60,55,40,25,0,0,0])], venue_id: "ven_456a5f6766346d4b6f483652674959654e32356334336d4a496843", venue_lat: 35.0525019, venue_lon: -85.3093192, venue_name: "The Bitter Alibi")
    
    
}
