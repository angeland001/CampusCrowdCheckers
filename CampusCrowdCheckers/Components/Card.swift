//
//  Card.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 2/3/23.
//


import SwiftUI
import Foundation


struct Card: Identifiable {
    var id  = UUID()
    var image : String
    var title : String
    var description : String
    
}

var testData:[Card] = [

     
 Card( image: "",title: "A New Experience", description: "Choose your school to see whats happening around campus and explore your new home"),

 Card(image: "", title: "Need Help?", description: "Talk to our virtual assistant, Jenni, who is an artificial intellegence bot designed to assist you"),
 
 Card( image: "",title: "Enjoy Your Time!", description: "Enjoy your college experience! Don't forget to take awesome pictures for your family and friends."),
 
 
 
 Card(image: "",title: "", description: ""),
 

]
