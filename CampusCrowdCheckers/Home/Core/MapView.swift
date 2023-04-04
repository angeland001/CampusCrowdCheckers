//
//  MapView.swift
//  CampusCrowdCheckers
//
//  
//


import SwiftUI
import MapKit

struct MapView: View {
    
    @StateObject var manager = LocationManager()
    @EnvironmentObject var vm: MapViewModel
    
        var body: some View {
            ZStack {
                
                mapDetails
                
                VStack  {
                    header
                    
                    Spacer()
                    locationPreviewStack
                    
                }
                
                
                
                
            }
            .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
                
                        LocationDetailView(Venue: location)
                    }
            
            
             
        
                
                
        }
}


extension MapView {
    private var header: some View {
        VStack(alignment: .leading){
            
            
                
                ZStack {
                    Capsule()
                        .frame(maxWidth: .infinity,maxHeight: 70)
                        .padding(.horizontal)
                        .padding(20)
                        .foregroundColor(Color.white)
                    HStack {
                        Text("Chattanooga")
                            .fontWeight(.bold)
                        
                        
                            
                    }
                    
                    
                }
            HStack {
                ZStack {
                    Capsule()
                        .frame(width:80, height:40)
                        .padding(.horizontal)
                        .padding(20)
                        .foregroundColor(Color.white)
                    HStack {
                        Text("Closest")
                            .fontWeight(.bold)
                        
                    }
                    
                }
                
                ZStack {
                    Capsule()
                        .frame(width:110, height:40)
                        .padding(.horizontal)
                        .padding(20)
                        .foregroundColor(Color("SecondAccentColor"))
                        .opacity(0.8)
                    HStack {
                        Text("Open Now")
                            
                            .foregroundColor(Color.white)
                            
                    }
                    
                }
                .offset(x:-60)
                
            }
            .offset(y:-20)
            
            
            
            
            
            
            
            
            
        }
        .padding(.horizontal)
        
        
                    
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
           .allowsHitTesting(false)
        
          
        
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
            .environmentObject(MapViewModel())
    }
}






