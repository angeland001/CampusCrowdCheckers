//
//  RestaurantModel.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/12/22.
//

import Foundation

//url = "https://besttime.app/api/v1/forecasts"
/*

 Json Response
 {
     "analysis": [
         {
             "day_info": {
                 "day_int": 0,
                 "day_rank_max": 6,
                 "day_rank_mean": 4,
                 "day_text": "Monday",
                 "venue_closed": 6,
                 "venue_open": 23
             },
             "day_raw": [
                 10,
                 25,
                 40,
                
             ],
             "hour_analysis": [
                 {
                     "hour": 6,
                     "intensity_nr": -1,
                     "intensity_txt": "Below average"
                 },
                 ... Other hours hidden. See full JSON example link below
             ],
             "peak_hours": [
                 {
                     "peak_start": 8,
                     "peak_max": 11,
                     "peak_end": 23,
                     "peak_intensity": 4
                 }
             ],
             "quiet_hours": [
                 6,
                 1,
                 2,
                 3
             ],
             "busy_hours": [
                 9,
                 10,
                 11,
                 12
             ],
             "surge_hours": {
                 "most_people_come": 8,
                 "most_people_leave": 22
             },
         },
         ... Other days hidden. See full JSON example link below
     ],
     "epoch_analysis": "1583314752",
     "status": "OK",
     "venue_info": {
         "venue_address": "1201 Ocean Ave San Francisco, CA 94112 United States",
         "venue_id": "ven_51387131543761435650505241346a394a6432395362654a496843",
         "venue_name": "McDonald's",
         "venue_timezone": "America/Los_Angeles",
         "venue_dwell_time_min": 20,
         "venue_dwell_time_max": 60,
         "venue_dwell_time_avg": 40,
         "venue_type": "FAST_FOOD",
         "venue_types": [
             "fast_food_restaurant",
             "breakfast_restaurant",
             "coffee_shop",
             "hamburger_restaurant",
             "restaurant",
             "sandwich_shop"
         ],
         "venue_lat": -8.6487349,
         "venue_lon": 115.13728069999999
     }
 }}
 
 
 
 
 */


// MARK: - Restaurant
struct Restaurant: Identifiable, Codable {
    var id = UUID()
    
    let analysis: [Analysis]?
    let epochAnalysis, status: String?
    let venueInfo: VenueInfo?
    
    enum CodingKeys: String, CodingKey {
        case id, status
        case analysis = "analysis"
        case epochAnalysis = "epoch_analysis"
        case venueInfo = "venue_info"
        
    }
}

// MARK: - Analysis
struct Analysis: Codable {
    let busyHours: [Int]?
    let changeHours: ChangeHours?
    let dayInfo: DayInfo?
    let hourAnalysis: [HourAnalysis]?
    let peakHours: [PeakHour]
    let quietHours: [Int]?
    
    enum CodingKeys: String, CodingKey {
        case busyHours = "busy_hours"
        case changeHours = "change_hours"
        case dayInfo = "day_info"
        case hourAnalysis = "hour_analysis"
        case peakHours = "peak_hours"
        case quietHours = "quiet_hours"
        
    }
    
    
}

// MARK: - ChangeHours
struct ChangeHours: Codable {
    let mostPeopleCome, mostPeopleLeave: Int
    
    enum CodingKeys: String, CodingKey {
        case mostPeopleCome = "most_people_come"
        case mostPeopleLeave = "most_people_leave"
        
    }
    
}

// MARK: - DayInfo
struct DayInfo: Codable {
    let dayInt, dayRankMax, dayRankMean: Int?
    let dayText: String?
    let venueClosed, venueOpen: Int?
    
    enum CodingKeys: String, CodingKey {
        case dayInt = "day_int"
        case dayRankMax = "day_rank_max"
        case dayRankMean = "day_rank_mean"
        case dayText = "day_text"
        case venueClosed = "venue_closed"
        case venueOpen =  "venue_open"
        
    }
}

// MARK: - HourAnalysis
struct HourAnalysis: Codable {
    let hour, intensityNr: Int?
    let intensityTxt: IntensityTxt?
    
    enum CodingKeys: String, CodingKey {
        case hour
        case intensityNr = "intensity_nr"
        case intensityTxt = "intensity_txt"
        
    }
}

enum IntensityTxt: Codable {
    case aboveAverage
    case average
    case belowAverage
    case high
    case low
}

// MARK: - PeakHour
struct PeakHour: Codable {
    let peakDeltaMeanWeek, peakEnd, peakIntensity, peakMax: Int?
    let peakStart: Int?
    
    enum CodingKeys: String, CodingKey {
        case peakDeltaMeanWeek = "peak_delta_mean_week"
        case peakEnd = "peak_end"
        case peakIntensity = "peak_intensity"
        case peakMax = "peak_max"
        case peakStart = "peak_start"
        
    }
}

// MARK: - VenueInfo
struct VenueInfo: Codable {
    let venueName: String
    let venueAddress, venueID, venueTimezone: String?
    let venue_types: [String]?
    let venue_lat, venue_lon: Double
    
    enum CodingKeys: String, CodingKey {
        case venueName = "venue_name"
        case venueAddress = "venue_address"
        case venueID = "venue_id"
        case venueTimezone = "venue_timezone"
        case venue_types
        case venue_lat, venue_lon
        
    }
}
