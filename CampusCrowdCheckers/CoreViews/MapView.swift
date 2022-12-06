//
//  MapView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/5/22.
//


import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054),span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        var body: some View {
            Map(coordinateRegion: $region, showsUserLocation: true)
                .ignoresSafeArea()
                .onAppear {
                    
                }
                
        }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

