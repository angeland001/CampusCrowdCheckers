//
//  LocationPreviewView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 1/2/23.
//

import SwiftUI

struct LocationPreviewView: View {
   
    var Venue: VenueElement
    @EnvironmentObject var vm: MapViewModel 
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            
            VStack(alignment: .leading,spacing: 16) {
                imageSection
                titleSection
            }
            
            VStack(spacing: 8) {
                //nextButton
                CrowdCheckButton
                
                
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
        .cornerRadius(10)
        
    }
}


extension LocationPreviewView {
    private var imageSection: some View {
        ZStack {
                Image("")
                    .resizable()
                    .scaledToFill()
                    .frame(width:100,height:100)
                    .cornerRadius(10)
            
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4){
            Text(Venue.venue_name)
                .font(.title2)
                .fontWeight(.bold)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
    private var CrowdCheckButton: some View {
        Button {
            vm.sheetLocation = Venue
        } label: {
            ZStack {
                Capsule()
                    .foregroundColor(Color.theme.Background)
                    .frame(width:120,height:50)
                Text("CrowdCheck")
                    .font(.headline)
                    .frame(width: 125, height: 35)
            }
            
        }
        
    }
    
    private var Info: some View {
        ZStack {
            
        }
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            LocationPreviewView(Venue: dev.Venue)
                .padding()
        }

    }
}


private func getCurrentDayAsInteger() -> Int {
    let currentDay = getCurrentDay()
    switch currentDay {
    case "Monday":
        return 0
    case "Tuesday":
        return 1
    case "Wednesday":
        return 2
    case "Thursday":
        return 3
    case "Friday":
        return 4
    case "Saturday":
        return 5
    case "Sunday":
        return 6
    default:
        return 7
    
    }
}
