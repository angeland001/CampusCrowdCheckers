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
        VStack {
            ZStack {
                
                infographic
                
            }
            .padding(.top)
            
            ScrollView {
                
                graph
                
                InfoBoxes(theme: Color[venue.colorOfVenue], DataFile: "ChickFilaData1")
                    
                
                
            }
            
            
            Spacer()
            
        }.padding(.top)
    }
    
    
}



extension Infographics {
    private var graph: some View {
        VStack() {
            HStack{
                Text("Predicted Population Graph")
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.text)
                
            }
            
            
            Chart {
                ForEach(Data) { element in
                    BarMark(
                        x: .value("Time", element.time),
                        y: .value("Total Count", element.animate ?  element.Populationcount : 0)
                    )
                    .foregroundStyle(Color[venue.colorOfVenue].gradient)
                    
                }
            }
            
            .background(Color.theme.Background)
            .frame(width:390,height:170)
            .onAppear {
                for (index,_) in Data.enumerated() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.05) {
                        withAnimation(.interactiveSpring(response: 0.8,dampingFraction: 0.8,blendDuration: 0.8)) {
                            Data[index].animate = true
                        }
                    }
                }
            }
            
            
        }
    }
    
    private var infographic: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.theme.Background)
                .shadow(color: colorScheme == .dark ? .white : .black, radius: 10)
                .frame(height: 250)
                .padding(.horizontal)
            VStack {
                Text(venue.VenueName)
                    .foregroundColor(Color.theme.text)
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.horizontal)
                Divider()
                    .frame(width: 60)
                
                HStack {
                    Image(venue.VenueName)
                    
                        .resizable()
                        .foregroundColor(Color.theme.text)
                        .clipShape(Circle())
                        .scaledToFit()
                        .frame(width: 105,height:105)
                        .shadow(color: colorScheme == .dark ? .white : .black, radius: 10)
                    VStack {
                        Text("Hours of Operation Today")
                            .font(.headline)
                        let timeForToday = convertIntToCurrentDay(arrayOfTime: venue.timeOfOperations)
                        
                        Text("Opening Hours: " + timeForToday.VenueOpeningHours)
                        Text("Closing Time: " + timeForToday.VenueClosingHours)
                        
                        
                    }
                    .foregroundColor(Color.theme.text)
                    
                    
                    
                    
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
