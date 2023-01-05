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



class RestaurantDetailModel: ObservableObject {
    @Published var RestaurantDetailsArray: [Restaurant] = []
    
    init() {
        getRestaurantData()
    }
    
    func getRestaurantData() {
        let headers = [
            "X-RapidAPI-Key": "a14239653bmsh3d8a95ca2f725a6p129fb9jsn414e9a5b95fb",
            "X-RapidAPI-Host": "restaurants-near-me-usa.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://restaurants-near-me-usa.p.rapidapi.com/restaurants/location/state/TN/city/Chattanooga/0")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error as Any)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse as Any)
                
                guard let restaurant = try? JSONDecoder().decode([Restaurant].self, from: data!) else { return }
                DispatchQueue.main.async { [weak self] in
                    self?.RestaurantDetailsArray = restaurant
                }
                
            }
        })

        dataTask.resume()
    }
    
    
}
