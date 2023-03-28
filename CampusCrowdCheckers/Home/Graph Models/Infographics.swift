//
//  Infographics.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/9/22.
//

import SwiftUI
import Charts

struct Infographics: View {
    
    //   @State var isAnimated: Bool = false
    var venue: SchoolVenues
    @Environment(\.colorScheme) var colorScheme
    @State var Data: [GraphChart] = dataForPanda
    
    var body: some View {
        
        infographic
                    
               
    }
    
    
}



extension Infographics {
        
    private var infographic: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.white)
                .shadow(color: .white, radius: 10)
                .frame(height: 250)
                .padding(.horizontal)
                
            VStack {
                Text(venue.VenueName)
                    .foregroundColor(Color.black)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .padding(.horizontal)
                
                
                
                
                HStack {
                    Image(venue.VenueName)
                    
                        .resizable()
                        .foregroundColor(Color.theme.text)
                        .clipShape(Circle())
                        .scaledToFit()
                        .frame(width: 75,height:75)
                        .shadow(color: .black, radius: 10)
                    
                    
                    VStack(alignment: .leading) {
                        let timeForToday = convertIntToCurrentDay(arrayOfTime: venue.timeOfOperations)
                        
                        Text("Opening Hours: ")
                            .fontWeight(.bold)
                        Text(timeForToday.VenueOpeningHours)
                        Text("Closing Time: ")
                            .fontWeight(.bold)
                        Text(timeForToday.VenueClosingHours)
                        
                        
                        
                        
                    }
                    .foregroundColor(Color.black)
                    
                    
                    
                    VStack {
                        Text("Current Crowd: ")
                        Text("15")
                            .bold()
                    }
                    
                }
                
                
            }
            
        }
    }
}

func convertIntToCurrentDay(arrayOfTime: [TimeOfOperations]) -> TimeOfOperations {
    let currentDay = getCurrentDay()
    
    switch currentDay {
    case "Monday":
        return arrayOfTime[0]
    case "Tuesday":
        return arrayOfTime[1]
    case "Wednesday":
        return arrayOfTime[2]
    case "Thursday":
        return arrayOfTime[3]
    case "Friday":
        return arrayOfTime[4]
    case "Saturday":
        return arrayOfTime[5]
    case "Sunday":
        return arrayOfTime[6]
        
    default:
        return arrayOfTime[0]
    }
}

struct Infographics_Previews: PreviewProvider {
    static var previews: some View {
        Infographics(venue: dev.schoolVenue)
    }
}
