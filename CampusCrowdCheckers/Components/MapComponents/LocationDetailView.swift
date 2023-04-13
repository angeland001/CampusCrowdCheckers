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
                                Text("Open Now")
                                    .foregroundColor(Color.theme.green)
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
//                                        Text("\(Venue.venue_foot_traffic_forecast?[dayAsInt].day_info?.venueOpen ?? 0)")
//                                            .foregroundColor(Color.white)
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

private func convertMiltaryTimetoStandard(Time: Int) -> Int  {
    return Time - 12
    
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


