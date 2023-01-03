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
                    locationPreviewStack
                    
                }
                
                
                
                
            }
            
            
             
        
                
                
        }
}


extension MapView {
    private var header: some View {
        HStack {
                    Text("Chattanooga, TN")
                        .font(.caption)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .frame(height:55)
                        .padding(.horizontal)
                        .background(.thickMaterial)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
                        .padding()
                        
                    ZStack {
                        Circle()
                            .foregroundColor(Color.theme.Background)
                            .frame(width: 30,height:30)
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(Color.theme.text)
                            
                            .rotationEffect(Angle(degrees: vm.showLocationList ? 180 : 0))
                    }
                }
                    
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
                     .onTapGesture {
                         vm.showNextLocation(location: location)
                     }
                     
             }
           }
          
        
           .ignoresSafeArea()
        
                    
          


        
    }
    
    private var locationPreviewStack: some View {
        ZStack {
            ForEach(vm.locations) { location in
                if vm.mapLocation == location {
                    LocationPreviewView(Venue: location)
                        .padding()
                        .shadow(color: Color.black.opacity(0.3), radius: 20)
                        .padding()
                        .transition(.asymmetric(insertion: .move(edge:.trailing), removal: .move(edge:.leading)))
                }

            }
        }

    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}






