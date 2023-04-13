//
//  MapViewModel.swift
//  CampusCrowdCheckers
//
//  
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
    
    func nextLocation() {
        //current index
        
        guard let currentLocation = locations.firstIndex(where: { $0 == mapLocation}) else {
            print("Could not find current index in array")
            return
        }
        
        let nextIndex = currentLocation + 1
        
        guard locations.indices.contains(nextIndex) else {
            
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
    
    
    
    func toggleLocationsList() {
        withAnimation(.easeInOut) {
            showLocationList.toggle()
        }
    }
    
    
}

    
    
            
    
    
    


