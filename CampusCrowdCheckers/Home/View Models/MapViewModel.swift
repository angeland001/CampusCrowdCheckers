//
//  MapViewModel.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/15/22.
//

import Foundation
import SwiftUI
import MapKit


class MapViewModel: ObservableObject {

        
        //All loaded Locations
        @Published var locations: [VenueElement] = VenueElement.allLocations
        
        //current location on map
//        @Published var mapLocation: Location {
//            didSet {
//                updateMapRegion(location: mapLocation)
//            }
//        }
        
        //current region on map
        @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
        let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
        //show list of locations
        @Published var showLocationList: Bool = false
        
        //show location detail via sheet
        //set to nil so it doesnt pop up immediately
        
        @Published var sheetLocation: VenueElement? = nil
        
        
        
//        private func updateMapRegion(location: Location) {
//            withAnimation(.easeInOut) {
//                mapRegion = MKCoordinateRegion(
//                        center: location.coordinates,
//                        span: mapSpan)
//            }
            
            
                
            
            
        
        
        func toggleLocationsList() {
            withAnimation(.easeInOut) {
                showLocationList.toggle()
            }
    }
}


        
//        func showNextLocation(location: Location) {
//            withAnimation(.easeInOut) {
//                mapLocation  = location
//                showLocationList = false
//            }
//        }
        
    



