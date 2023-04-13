//
//  LocationDetailView.swift
//  CampusCrowdCheckers
//
//  
//

import SwiftUI
import MapKit
import Charts

struct LocationDetailView: View {
    
    let Venue: VenueElement
    @State var isOpen = false
    @EnvironmentObject var vm: MapViewModel
    
    
    
    
    var body: some View {
        ScrollView {
            

            VStack(alignment: .leading) {
                Spacer(minLength: 120)
                    titleSection
                    Divider()
                    descriptionSection
                    
                
                }
                
                .padding()
            
            
            
        }
        .ignoresSafeArea()
        .background(Color("Jenni"))
        .overlay(backButton, alignment: .topLeading)
    }
}


extension LocationDetailView {
    

    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(Venue.venue_name)
            
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(Venue.venue_address)
                .font(.caption)

                //.foregroundColor(.secondary)

                
        }
        .foregroundColor(Color.theme.text)
        
        
    }
    
    private var descriptionSection: some View {
        
        VStack( alignment: .leading, spacing: 8) {
            
            ZStack {
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .frame(height: isOpen ? 80: 50)
                    .cornerRadius(10)
                    
                Button {
                    isOpen.toggle()
                } label: {
                    
                        HStack {
                            Image(systemName: isOpen ? "clock.fill" : "clock")
                                
                                .resizable()
                                .frame(width:30,height:30)
                                .animation(.none)
                                .foregroundColor(Color.white)
                            Spacer()
                            VStack(alignment:.leading, spacing:10) {
                                Text("Current Hours")
                                    .foregroundColor(Color.white)
                                    .fontWeight(.bold)
                                    .font(.headline)
                                    
                                if isOpen {
                                    HStack{
                                        let day = getCurrentDay()
                                        let dayAsInt = getCurrentDayAsInteger()

                                        let OpeningHours = convertMiltaryTimetoStandard(Time: (Venue.venue_foot_traffic_forecast?[dayAsInt].day_info?.venueOpen)!)
                                        let ClosingHours = convertMiltaryTimetoStandard(Time: (Venue.venue_foot_traffic_forecast?[dayAsInt].day_info?.venueClosed)!)
                                        Text("Hours for \(day)")
                                            .foregroundColor(Color.white)
                                        Text("\(OpeningHours):00 AM")
                                            .foregroundColor(Color.white)
                                        Text("\(ClosingHours):00 PM")
                                            .foregroundColor(Color.white)


                                    }
                                    
                                }
                                
                               
                            }
                            
                            Spacer()
                           
                            
                            Image(systemName: isOpen ? "arrow.up" : "arrow.down")
                                .resizable()
                                .frame(width:10,height:15)
                                .animation(.none)
                                .foregroundColor(Color.white)
                            
                        }
                        .padding(.horizontal)
                        
                        
                    
                    
                            
                            
                            
                    
                    
                }
            }
            
                
                Text("Visitor Forecast Today ")
                    .font(.headline)
                    .foregroundColor(Color.theme.text)
                    .padding(.vertical)
                    
            
            
            
                
                
                
                
                
            
            
        }
    }
    

    
    private var backButton: some View {
        Button {
            vm.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }

    }
}


    
    private func convertMiltaryTimetoStandard(Time: Int) -> String  {
        let HoursOfDay:[Int:String] = [0:"6:00 AM", 1: "7:00 AM", 2:"8:00 AM", 3: "9:00 AM", 4: "10:00 AM", 5:"11:00 AM",6: "12:00 PM",7:"1:00 PM",8: "2:00 PM", 9: "3:00 PM", 10: "4:00 PM", 11: "5:00 PM", 12: "6:00 PM", 13: "7:00 PM", 14: "8:00 PM", 15: "9:00 PM", 16: "10:00 PM", 17: "11:00 PM", 18:"12:00 AM", 19: "1:00 AM", 20: "2:00 AM", 21: "3:00 AM", 22: "4:00 AM", 23: "5:00 AM"]
        
        if let value = HoursOfDay[Time] {
            return value
        }
        else {
            return "Null"
        }
        
        
        
    }
    
    private func getCurrentDayAsInteger() -> Int {
        let currentDay = getCurrentDay()
        switch currentDay {
        case "Monday":
            return 0
        case "Tuesday":
            return 1
        case "Wednesday":
            return 2
        case "Thursday":
            return 3
        case "Friday":
            return 4
        case "Saturday":
            return 5
        case "Sunday":
            return 6
        default:
            return 0
            
        }
    }
    
    struct LocationDetailView_Previews: PreviewProvider {
        static var previews: some View {
            LocationDetailView(Venue: dev.Venue)
        }
    }
    

