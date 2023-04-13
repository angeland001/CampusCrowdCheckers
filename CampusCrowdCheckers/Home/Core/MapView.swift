//
//  MapView.swift
//  CampusCrowdCheckers
//
//  
//


import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.045631, longitude:  -85.309677), span: MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.01))

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
            
            
            
            
            
            
            
            
            
            
        }
        .padding(.horizontal)
        
        
                    
    }
    
    private var mapDetails: some View {
        

        Map(coordinateRegion: $region, annotationItems: vm.locations
           ) { location in
             MapAnnotation(
               coordinate: CLLocationCoordinate2D(
                 latitude: location.venue_lat,
                 longitude: location.venue_lon
               )
             ) {
               LocationMapAnnotationView()
                     .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
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
            .environmentObject(MapViewModel())
    }
}






