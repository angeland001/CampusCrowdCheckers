//
//  UniversityModel.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/17/22.
//

import Foundation
import SwiftUI

struct University: Identifiable, Codable {
    var id: Int
    var name: String
    var colors: [String]
    var type: String
    var city: String
    var state: String
    var zip: String
    var website: String
    var schoolVenues: [SchoolVenues]
    
    static let universities: [University] = [

        University(id: 1, name: "Vanderbilt University", colors: ["yellow", "black"], type: "Private", city: "Nashville", state: "Tennessee", zip: "37235", website: "http://www.vanderbilt.edu/", schoolVenues: [SchoolVenues(VenueName: "Commons", type: "Dining Hall", colorOfVenue: "black", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "9:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "9:00AM", VenueClosingHours: "8:00PM")]), SchoolVenues(VenueName: "E.Bronson Ingram", type: "Dining Hall", colorOfVenue: "black", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "9:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "9:00AM", VenueClosingHours: "8:00PM")]), SchoolVenues(VenueName: "Nicholas S. Zeppos", type: "Dining Hall", colorOfVenue: "black", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "9:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "9:00AM", VenueClosingHours: "8:00PM")]), SchoolVenues(VenueName: "Rothschild Dining Hall", type: "Dining Hall", colorOfVenue: "black", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "9:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "9:00AM", VenueClosingHours: "8:00PM")]),SchoolVenues(VenueName: "Grins Vegetarian Cafe", type: "Cafe", colorOfVenue: "green", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "6:30PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "6:30PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "6:30PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "6:30PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "2:30PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Holy Smokes", type: "Cafe", colorOfVenue: "red", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "12:00AM", VenueClosingHours: "1:30PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "12:00AM", VenueClosingHours: "1:30PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "12:00AM", VenueClosingHours: "1:30PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "12:00AM", VenueClosingHours: "1:30PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "12:00PM", VenueClosingHours: "3:00PM")]),SchoolVenues(VenueName: "Local Java at Alumni Cafe", type: "Cafe",colorOfVenue: "brown",timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "4:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "4:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "4:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "6:30PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "4:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")])]),
            University(id: 2, name: "The University of Knoxville"
                       , colors: ["orange"], type: "Public", city: "Knoxville", state: "Tennessee", zip: "37996", website: "https://www.utk.edu/", schoolVenues: [SchoolVenues(VenueName: "Southern Kitchen", type: "Cuisine", colorOfVenue: "brown", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 3,VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]), SchoolVenues(VenueName: "Vol Bakery", type: "Bakery", colorOfVenue: "orange",timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:30AM", VenueClosingHours: "1:30PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:30AM", VenueClosingHours: "1:30PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:30AM", VenueClosingHours: "1:30PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:30AM", VenueClosingHours: "1:30PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:30AM", VenueClosingHours: "1:30PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Arena Dining Cafe", type: "Cuisine", colorOfVenue: "orange", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Steak 'n Shake", type: "Cuisine", colorOfVenue: "red", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "10:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "10:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "10:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "10:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "10:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Panda Express at Student Union", type: "Cuisine", colorOfVenue: "orange", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "10:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "10:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "10:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "10:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "10:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Chick-Fil-A at Student Union", type: "Fast Food", colorOfVenue: "red",timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "8:00AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "8:00AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "8:00AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "8:00AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "8:00AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Starbucks at Hodges Library", type: "Cafe", colorOfVenue: "green", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:30AM", VenueClosingHours: "11:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:30AM", VenueClosingHours: "11:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:30AM", VenueClosingHours: "11:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:30AM", VenueClosingHours: "11:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "10:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "10:30AM", VenueClosingHours: "9:00PM")]), SchoolVenues(VenueName: "Dunkin' Donuts", type: "Cafe", colorOfVenue: "pink", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")])]),
        University(id: 3, name: "The University of Tennessee at Chattanooga", colors: ["yellow"], type: "Public", city: "Chattanooga", state: "Tennessee", zip: "37403", website: "http://www.utc.edu/", schoolVenues: [SchoolVenues(VenueName: "Chick-Fil-A", type: "Fast Food", colorOfVenue: "red", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:30AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:30AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:30AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:30AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:30AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "11:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")])
,SchoolVenues(VenueName: "Starbucks", type: "Cafe", colorOfVenue: "green", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:30AM", VenueClosingHours: "10:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:30AM", VenueClosingHours: "10:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:30AM", VenueClosingHours: "10:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:30AM", VenueClosingHours: "10:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:30AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "12:00PM", VenueClosingHours: "4:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "2:00PM", VenueClosingHours: "10:00PM")]),SchoolVenues(VenueName: "Panda Express", type: "Cuisine", colorOfVenue: "red", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "10:30AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "10:30AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "10:30AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "10:30AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "10:30AM", VenueClosingHours: "4:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Einstein Bros. Bagels", type: "Cafe",colorOfVenue: "orange", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Moe's Southwestern Grill", type: "Fast Food", colorOfVenue: "orange",timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "10:30AM", VenueClosingHours: "4:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "10:30AM", VenueClosingHours: "4:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "10:30AM", VenueClosingHours: "4:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "10:30AM", VenueClosingHours: "4:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "10:30AM", VenueClosingHours: "2:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "11:00AM", VenueClosingHours: "8:00PM")]),SchoolVenues(VenueName: "The Arc",  type: "Gymnnasium", colorOfVenue: "black", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "6:00AM", VenueClosingHours: "10:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "6:00AM", VenueClosingHours: "10:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "6:00AM", VenueClosingHours: "10:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "6:00AM", VenueClosingHours: "10:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "6:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "11:00AM", VenueClosingHours: "6:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "1:00PM", VenueClosingHours: "8:00PM")])]),
        
        University(id: 4, name: "Tennessee Tech", colors: ["purple"], type: "Public", city: "Cookeville", state: "Tennessee", zip: "38505", website: "https://www.tntech.edu/", schoolVenues: [SchoolVenues(VenueName: "Starbucks", type: "Cafe", colorOfVenue: "green", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Chick-Fil-A", type: "Fast Food", colorOfVenue: "red", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "8:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Einstein Bros. Bagels", type: "Bakery", colorOfVenue: "orange", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Au Bon Pain", type: "Fast Food", colorOfVenue: "black", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:30AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:30AM", VenueClosingHours: "3:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Tu Taco", type: "Fast Food", colorOfVenue: "black", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")])]),
            University(id: 5, name: "Middle Tennessee State University", colors: ["blue"]
                       , type: "Public", city: "Murfreesboro", state: "Tennessee", zip: "37132", website: "http://www.mtsu.edu/", schoolVenues: [SchoolVenues(VenueName: "Chick-Fil-A", type: "Fast Food", colorOfVenue: "red", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "10:30AM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "10:30AM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "10:30AM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "10:30AM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "10:30AM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Steak 'n Shake", type: "Cuisine", colorOfVenue: "red",timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "10:00AM", VenueClosingHours: "6:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "10:00AM", VenueClosingHours: "6:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "10:00AM", VenueClosingHours: "6:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "10:00AM", VenueClosingHours: "6:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "10:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "Farmer's Market", type: "Cuisine",colorOfVenue: "black", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "11:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "11:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "11:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "11:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "11:00AM", VenueClosingHours: "3:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")]),SchoolVenues(VenueName: "McCallie Dining Hall at KUC", type: "Cuisine", colorOfVenue: "black",timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:30PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:30PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:30PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "9:30PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "9:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "9:00AM", VenueClosingHours: "8:00PM")]),SchoolVenues(VenueName: "Starbucks", type: "Cafe", colorOfVenue: "green", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "7:00AM", VenueClosingHours: "12:00AM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "7:00AM", VenueClosingHours: "12:00AM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "7:00AM", VenueClosingHours: "12:00AM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "7:00AM", VenueClosingHours: "12:00AM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "7:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "11:00AM", VenueClosingHours: "5:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "2:00PM", VenueClosingHours: "11:00PM")]),SchoolVenues(VenueName: "Raider Zone Grill and Market", type: "Grille", colorOfVenue: "black", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "8:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "8:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "8:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "8:00AM", VenueClosingHours: "9:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "8:00AM", VenueClosingHours: "8:00PM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "11:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "11:00AM", VenueClosingHours: "7:00PM")]),SchoolVenues(VenueName: "Twisted Taco", type: "Cuisine", colorOfVenue: "black", timeOfOperations: [TimeOfOperations(dayAsInteger: 0, VenueOpeningHours: "10:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 1, VenueOpeningHours: "10:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 2, VenueOpeningHours: "10:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 3, VenueOpeningHours: "10:00AM", VenueClosingHours: "7:00PM"),TimeOfOperations(dayAsInteger: 4, VenueOpeningHours: "10:00AM", VenueClosingHours: "5:00AM"),TimeOfOperations(dayAsInteger: 5, VenueOpeningHours: "Closed", VenueClosingHours: "Closed"),TimeOfOperations(dayAsInteger: 6, VenueOpeningHours: "Closed", VenueClosingHours: "Closed")])]),
//        University(id: 7, name: "East Tennessee State University", colors: ["yellow"], type: "Public", city: "Johnson City", state: "Tennessee", zip: "37614", website: "https://www.etsu.edu/", schoolVenues: []),
//        University(id: 8, name: "Belmont University", colors: ["red"], type: "Private", city: "Nashville", state: "Tennessee", zip: "37212", website: "http://www.belmont.edu/", schoolVenues: [])

        ]
}

struct SchoolVenues:Identifiable, Codable {
    
    var id = UUID()
    var VenueName: String
    var type: String
    var colorOfVenue: String
    var timeOfOperations: [TimeOfOperations]
    
}

struct TimeOfOperations: Identifiable, Codable {
    var id = UUID()
    
    var dayAsInteger: Int
    var VenueOpeningHours, VenueClosingHours: String
}




