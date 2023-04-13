//
//  LocationListRow.swift
//  CampusCrowdCheckers
//
//  
//

import SwiftUI


struct LocationsListView: View {
    @StateObject var vm: MapViewModel = MapViewModel()
    var body: some View {
        List {
            ForEach(vm.locations) { location in
                Button {
                    vm.showNextLocation(location: location)
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



