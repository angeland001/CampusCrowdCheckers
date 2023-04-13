//
//  LocationRequestView.swift
//  CampusCrowdCheckers
//
//  
//

import SwiftUI

struct LocationRequestView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            Color("Jenni")
                        .ignoresSafeArea()
                    VStack {
                        Spacer()
                        Image(systemName: "map.fill")
                            .resizable()
                            .frame(width:300,height:300)
                        
                        
                            Text("Enable Geolocation")
                                .font(.system(size:26,weight:.semibold))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.white)
                                .padding()
                        HStack {
                            Text("Enable Location Services to get full access to CrowdCheck.")
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .none)
                                .foregroundColor(Color.white).opacity(0.5)
                                
                        }
                        Spacer()
                        
                        VStack {
                            Button {
                                LocationManager.shared.requestLocation()
                            } label: {
                                Text("Allow Location")
                                    .padding()
                                    .font(.headline)
                                    .foregroundColor(Color.black)
                            }
                            .frame(width: UIScreen.main.bounds.width)
                            .padding(.horizontal,-50)
                            .background(Color.white)
                            .clipShape(Capsule())
                            .padding()
                            
                            
                            


                        }
                        Spacer()
                            
                    }
                    .foregroundColor(Color.white)
                }
    }
}

struct LocationRequestView_Previews: PreviewProvider {
    static var previews: some View {
        LocationRequestView()
    }
}
