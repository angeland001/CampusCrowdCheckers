//
//  LocationPreviewView.swift
//  CampusCrowdCheckers
//
//  
//

import SwiftUI

struct LocationPreviewView: View {
   
    var Venue: VenueElement
    @EnvironmentObject var vm: MapViewModel
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            
            VStack(alignment: .center,spacing: 16) {
                
                titleSection
                HStack(spacing: 8) {
                    
                    nextLocation
                    CrowdCheckButton
                    
                    
                    
                }
            }
            
            
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                
        )
        .cornerRadius(10)
        
    }
}


extension LocationPreviewView {
    
    
    private var titleSection: some View {
        VStack(alignment: .center){
            Text(Venue.venue_name)
                .font(.title2)
                .fontWeight(.bold)
                
            
        }
        .frame(maxWidth: .infinity, alignment: .center)
        
    }
    
    private var CrowdCheckButton: some View {
        Button {
            vm.sheetLocation = Venue
        } label: {
            ZStack {
                Capsule()
                    .foregroundColor(Color("Jenni"))
                    .frame(width:120,height:50)
                Text("CrowdCheck")
                    .font(.headline)
                    .frame(width: 125, height: 35)
                    .foregroundColor(Color.white)
            }
            
        }
        
    }
    
    private var nextLocation: some View {
        
        Button {

            vm.nextLocationPressed()

        } label: {
            ZStack {
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(Color.white)
                    .frame(width:120,height:50)
                    .overlay {
                        Rectangle()
                            .stroke(Color.black, lineWidth: 2)
                            .cornerRadius(4)
                    }
                Text("Next Location")
                    .font(.headline)
                    .frame(width: 125, height: 35)
                    .foregroundColor(Color.black)
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



