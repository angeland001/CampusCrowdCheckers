//
//  VenueModel.swift
//  CampusCrowdCheckers
//
//  
//

import Foundation

struct VenueElement: Equatable, Identifiable, Codable{
    

    static func == (lhs: VenueElement, rhs: VenueElement) -> Bool {
        lhs.id == rhs.id
    }
    
    var id = UUID()
    let forecast, processed: Bool
    let venue_address: String
    let venue_foot_traffic_forecast: [VenueFootTrafficForecast]?
    let venue_id: String
    let venue_lat, venue_lon: Double
    let venue_name: String
    
    static let allLocations: [VenueElement] = Bundle.main.decode(file: "VenueLocations.json")
    static let sampleLocation: VenueElement = allLocations[0]
    
    enum CodingKeys: CodingKey {
        case forecast , processed
        case venue_address
        case venue_foot_traffic_forecast
        case venue_id
        case venue_lat, venue_lon
        case venue_name
    }
}

// MARK: - VenueFootTrafficForecast
struct VenueFootTrafficForecast: Codable {
    let day_info: DayInfo?
    let day_int: Int?
    let day_raw: [Int]?
    
    enum CodingKeys: CodingKey {
        case day_info
        case day_int
        case day_raw
    }
    
    
}

// MARK: - DayInfo
struct DayInfo: Codable {
    let day_int, day_max, day_mean, day_rank_max: Int?
    let day_rank_mean, venue_closed, venue_open: Int?
    
    enum CodingKeys: CodingKey {
        case day_int, day_max, day_mean, day_rank_max
        case day_rank_mean, venue_closed, venue_open
    }

    
}
