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
    
    @Published var locations: [VenueElement]
    
    init() {
        let locations = VenueElement.allLocations
        self.locations = locations
        self.mapLocation = locations.first!
        
        self.updateMapRegion(location: locations.first!)
    }
    
    //All loaded Locations
   
    
    //current location on map
    @Published var mapLocation: VenueElement {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    //current region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    var mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    //show list of locations
    @Published var showLocationList: Bool = false
    
    //show location detail via sheet
    //set to nil so it doesnt pop up immediately
    
    @Published var sheetLocation: VenueElement? = nil
    
    
    private func updateMapRegion(location: VenueElement) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center:  CLLocationCoordinate2D(latitude: location.venue_lat, longitude: location.venue_lon),
                span: mapSpan)
        }
    }
    
    
    func showNextLocation(location: VenueElement) {
        withAnimation(.easeInOut) {
            mapLocation  = location
            showLocationList = false
        }
    }
    
    
    
    
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
    
    
    


