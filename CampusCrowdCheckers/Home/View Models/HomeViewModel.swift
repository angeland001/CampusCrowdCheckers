//
//  HomeViewModel.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/17/22.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var universities: [University] = []
    
    
    init() {
        getUniversities()
    }
        
    func getUniversities() {
       

        let headers = [
            "X-RapidAPI-Key": "a14239653bmsh3d8a95ca2f725a6p129fb9jsn414e9a5b95fb",
            "X-RapidAPI-Host": "universities-and-colleges.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://universities-and-colleges.p.rapidapi.com/universities?includeUniversityDetails=true&countryCode=US&limit=50&search=Tennessee")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error as Any)
            } else {
                guard let newSchool = try? JSONDecoder().decode([University].self, from: data!) else { return }
                DispatchQueue.main.async { [weak self] in
                    self?.universities = newSchool
                }
            }
        })

        dataTask.resume()


    }
    

}

