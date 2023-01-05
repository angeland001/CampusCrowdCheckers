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
    @EnvironmentObject var vm: MapViewModel
    @StateObject var rm = RestaurantDetailModel()
    
    var body: some View {
        ScrollView {
            
//                imageSection
//                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
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
        .background(.ultraThinMaterial)
        .overlay(backButton, alignment: .topLeading)
    }
}


extension LocationDetailView {
    
//    private var imageSection: some View {
//        TabView {
//            ForEach(0...2, id: \.self) {_ in
//                Image("Beer")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: UIScreen.main.bounds.width)
//                    .clipped()
//            }
//        }
//        .frame(height: 500)
//        .tabViewStyle(PageTabViewStyle())
//    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(Venue.venue_name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(Venue.venue_address)
                .font(.title)
                .foregroundColor(.secondary)
        }
        
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Crowd Level: ")
                .font(.headline)
                .foregroundColor(Color.theme.text)

            


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
