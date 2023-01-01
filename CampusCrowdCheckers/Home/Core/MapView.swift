//
//  MapView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/5/22.
//


import SwiftUI
import MapKit

struct MapView: View {
    
    @StateObject var manager = LocationManager()
    @StateObject var vm: MapViewModel = MapViewModel()
    
        var body: some View {
            ZStack {
                
                mapDetails
                
                VStack  {
                    header
                    
                    Spacer()
                }
                
                
                
                
            }
            
            
             
        
                
                
        }
}


extension MapView {
    private var header: some View {
        VStack {
            Button {
                vm.showLocationList.toggle()
            } label: {
                Text("Chattanooga, TN")
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height:55)
                    .frame(maxWidth: .infinity)
                    .overlay(alignment: .leading) {
                    Image(systemName: "arrow.down")
                        .font(.headline)
                        .foregroundColor(.primary)
                        .padding()
                        .rotationEffect(Angle(degrees: vm.showLocationList ? 180 : 0))
                                        }
                    
                    //.animation(.none, value: vm.mapLocation)
                    
                    
            }
            
            if vm.showLocationList {
                LocationsListView()
            }
            
            


            
        }
        
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
        .padding()
    }
    
    private var mapDetails: some View {

        Map(coordinateRegion: $manager.region, annotationItems: vm.locations
           ) { location in
             MapAnnotation(
               coordinate: CLLocationCoordinate2D(
                 latitude: location.venue_lat,
                 longitude: location.venue_lon
               )
             ) {
               LocationMapAnnotationView()
                     .shadow(radius: 10)
                     
             }
           }
        
           .ignoresSafeArea()
        
                    
          


        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}




//Map(coordinateRegion: $manager.region, showsUserLocation: true)
//            .ignoresSafeArea()
