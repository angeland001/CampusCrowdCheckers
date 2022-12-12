//
//  BotResponse.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/16/22.
//

import Foundation

func getBotRespone(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("hello"){
        return "Welcome to Campus Crowd Check!"
    }else if tempMessage.contains("what time does moes close"){
        return "Moes closes at 4:00 p.m."
    }else if tempMessage.contains("how are you"){
        return "I am fine, how are you"
    }else{
        return "Goodbye"
    }
    
}
