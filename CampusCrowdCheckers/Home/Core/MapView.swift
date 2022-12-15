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
                //vm.toggleLocationsList()
            } label: {
                Text("Testing for Radius")
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height:55)
                    .frame(maxWidth: .infinity)
                    //.animation(.none, value: vm.mapLocation)
                    
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            //.rotationEffect(Angle(degrees: vm.showLocationList ? 180 : 0))
                    }
            }


            
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
    
    private var mapDetails: some View {
        Map(coordinateRegion: $manager.region, showsUserLocation: true)
            .ignoresSafeArea()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

