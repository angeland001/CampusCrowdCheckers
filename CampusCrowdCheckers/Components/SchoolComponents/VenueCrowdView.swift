//
//  VenueCrowdView.swift
//  CampusCrowdCheckers
//
//  
//

import SwiftUI

struct VenueCrowdView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var school: University
    var venue: SchoolVenues
    
    
    
    var body: some View {
        
        let timeForToday = convertIntToCurrentDay(arrayOfTime: venue.timeOfOperations)
        
        ZStack {
            LinearGradient(colors: [Color[venue.colorOfVenue], Color.white], startPoint: .top, endPoint: .bottomTrailing)
                .navigationBarBackButtonHidden(true)
                        .navigationBarItems(leading:
                            Button(action: { self.presentationMode.wrappedValue.dismiss()}) {
                                Image(systemName: "arrow.backward")
                                .foregroundColor(Color.white)
        
                            })
            
            VStack(spacing: 40) {
                HStack {
                    VStack(alignment: .center) {
                        Image(venue.VenueName)
                            .resizable()
                            .foregroundColor(Color.white)
                            .clipShape(Circle())
                            .scaledToFit()
                            .frame(width: 105,height:105)
                    }
                    Spacer()
                    
                    VStack(alignment: .center) {
                        
                        
                        
                        Text("Opening at: ")
                            
                        Text(timeForToday.VenueOpeningHours)
                        Text("Closes at: ")
                            
                        Text(timeForToday.VenueClosingHours)

                    }
                    .foregroundColor(Color.black)
                    .font(.body)
                    
                    Spacer()
                    
                    VStack(alignment: .center) {
                        Text("Crowd Now")
                            
                        Text("TBD")
                            
                    }
                    .foregroundColor(Color.black)
                    .font(.body)
                }
                .padding()
                .frame(width: 360)
                .foregroundStyle(LinearGradient(colors: [Color.white, Color.white], startPoint: .top, endPoint: .bottom))
            .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
               
                if (timeForToday.VenueOpeningHours != "Closed") {
                    VStack(alignment: .leading, spacing: 2){
                        Text("More Info".uppercased())
                            .font(.headline)
                            .padding()
                        
                        HStack(alignment: .top){
                            Text("This is generally the most crowded at 2:00 pm")
                                .font(.caption)
                                .frame(width: 250, height: 32)
                            Spacer()
                            
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                        
                        HStack{
                            VStack(alignment: .center){
                                let randomNumber = Double.random(in: 6.0...13.0)
                                Text("\(randomNumber, specifier: "%.1f")")
                                
                                    .font(.system(size: 24, weight: .bold, design: .rounded))
                                Text("avg crowd/hour".uppercased())
                                    .font(.system(size: 12, weight: .regular, design: .rounded))
                            }
                            Spacer()
                            
                            VStack(alignment: .center){
                                let randomNumber = Double.random(in: 6.0...13.0)
                                Text("\(randomNumber, specifier: "%.1f") %" )
                                    .font(.system(size: 24, weight: .bold, design: .rounded))
                                    .foregroundColor(Color.green)
                                Text("this month".uppercased())
                                    .font(.system(size: 12, weight: .regular, design: .rounded))
                            }
                            Spacer()
                            
                            VStack(alignment: .center){
                                let randomNumber = Int.random(in: 1...5)
                                Text("\(randomNumber) Hrs")
                                    .font(.system(size: 24, weight: .bold, design: .rounded))
                                Text("Before Rush".uppercased())
                                    .font(.system(size: 12, weight: .regular, design: .rounded))
                            }
                        }
                        .padding()
                    }
                    .frame(width: 360)
                    .foregroundColor(Color.black.opacity(0.8))
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
                }
                if (timeForToday.VenueOpeningHours != "Closed") {
                    SchoolVenueChart(school:venue)
                }
                
            }
        }
        .ignoresSafeArea()
    }
}

struct VenueCrowdView_Previews: PreviewProvider {
    static var previews: some View {
        VenueCrowdView(school: dev.school, venue: dev.schoolVenue)
    }
}
