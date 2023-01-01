//
//  LocationListRow.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 1/1/23.
//

import SwiftUI


struct LocationsListView: View {
    private var locations: [VenueElement] = VenueElement.allLocations
    var body: some View {
        List {
            ForEach(locations) { location in
                Button {
                    
                } label: {
                    listRowView(location: location)
                }
                .padding(.vertical,4)
                .listRowBackground(Color.clear)
            }
        }
        .listStyle(.plain)
    }
}



extension LocationsListView {
    private func listRowView(location: VenueElement) -> some View {

            VStack(alignment: .leading) {
                Text(location.venue_name)
                    .font(.headline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
        }
    }



