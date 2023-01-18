//
//  RestaurantDetailModel.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 1/4/23.
//


import Foundation

// MARK: - Restaurant
struct Restaurant:Identifiable, Decodable{
    var id = UUID()
    let matchingResults: Int?
    let restaurants: [RestaurantElement]?
}

// MARK: - RestaurantElement
struct RestaurantElement: Identifiable, Decodable {
    var id: Int
    let restaurantName, zipCode, phone: String?
    let website: String?
    let email: String?
    let stateName: String?
    let cityName: String?
    let hoursInterval, cuisineType: String?
}





