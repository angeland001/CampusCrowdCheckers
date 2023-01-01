//
//  Bundle.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 1/1/23.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("could not find \(file)")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("could not load \(file)")
     
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("could not decode \(file)")
        }
        
        return loadedData
    }
}
