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
            Map(coordinateRegion: $manager.region, showsUserLocation: true)
                .ignoresSafeArea()
                
                
        }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

