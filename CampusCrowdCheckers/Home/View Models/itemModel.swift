//
//  itemModel.swift
//  CampusCrowdCheckers
//
//  
//

import Foundation

//immutable struct
//these let items will never change, if var, you could change title directly
//they can only be changed through updateCompletion
struct itemModel: Identifiable, Codable{
    let id: String
    let title: String
    let isComplete: Bool
    
    init(id: String = UUID().uuidString,title: String, isComplete: Bool) {
        self.id = id
        self.title = title
        self.isComplete = isComplete
    }
    
    func updateCompletion() -> itemModel{
        return itemModel(id: id, title: title, isComplete: !isComplete)
    }
    
}
