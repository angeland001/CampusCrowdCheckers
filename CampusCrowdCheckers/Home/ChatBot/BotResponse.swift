//
//  BotResponse.swift
//  CampusCrowdCheckers
//
//  
//

import Foundation

func getBotRespone(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("1"){
        return "I can answer any questions you have about the map, to-do listm and crowd view."
    }else if tempMessage.contains("2"){
        return "If you have any questions regarding hours of operations, you can ask me 'What time does restaurant A close' and I will let you know."
    }else if tempMessage.contains("3"){
        return "Since I am in early development, I can only repspond to the options you saw in my welcome message. Soon, I will be able to assist you to the best of my ability."
    }else{
        return "Response not learned yet. Please select one of the options: 1,2,3."
    }
    
}
