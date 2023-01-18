//
//  LocationDetailView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 1/3/23.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    
    let Venue: VenueElement
    @State var isOpen = false
    @EnvironmentObject var vm: MapViewModel
    @StateObject var rm = RestaurantDetailModel()
    
    var body: some View {
        ScrollView {
            

            VStack(alignment: .leading) {
                Spacer(minLength: 120)
                    titleSection
                    Divider()
                    descriptionSection
                    //Divider()
                    //mapLayer
                
                }
                //.frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            
            
        }
        .ignoresSafeArea()
        .background(Color.theme.Background)
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
                .font(.title)
                .foregroundColor(.secondary)
                
        }
        .foregroundColor(Color.theme.text)
        
        
    }
    
    private var descriptionSection: some View {
        
        VStack( spacing: 8) {
            
            ZStack {
                Button {
                    isOpen.toggle()
                } label: {
                    ZStack {
                        
                        HStack {
                            Image(systemName: "clock")
                                .resizable()
                                .frame(width:30,height:30)
                            Spacer()
                            VStack {
                                Text("Open Now")
                                    .foregroundColor(Color.theme.green)
                                    .font(.headline)
                                    .offset(x:-200)
                                if isOpen {
                                    HStack{
//                                        Text(Venue.venue_foot_traffic_forecast[0])
                                    }
                                    
                                }
                                
                                
                            }
                            
                            
                            Image(systemName: "arrow.down")
                                .resizable()
                                .frame(width:10,height:15)
                            
                        }
                        .padding(.horizontal)
                        
                        
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.ultraThinMaterial)
                            
                            
                            
                    )
                    
                }
            }
                
                Text("Crowd Level ")
                    .font(.headline)
                //.fontWeight(.heavy)
                    .foregroundColor(Color.theme.text)
                    .padding(.vertical)
                
                
                
                
                
            
            
        }
    }
    
//    private var mapLayer: some View {
//        Map(coordinateRegion: .constant(MKCoordinateRegion(
//            center: location.coordinates,
//            span: vm.mapSpan)),
//            annotationItems: [location]) { location in
//            MapAnnotation(coordinate: location.coordinates) {
//                LocationMapAnnotationView()
//                    .shadow(radius: 10)
//
//            }
//
//
//
//        }
//            .allowsHitTesting(false)
//            .aspectRatio(1, contentMode: .fit)
//            .cornerRadius(30)
//
//
//    }
    
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


struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(Venue: dev.Venue)
    }
}


