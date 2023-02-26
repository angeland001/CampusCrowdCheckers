//
//  LocationRequestView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/4/22.
//

import SwiftUI

struct LocationRequestView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            Color.white
                        .ignoresSafeArea()
                    VStack {
                        Spacer()
                        GifImage("geolocation")
                            .frame(width:300,height:300)
                        
                        
                            Text("Enable Geolocation")
                                .font(.system(size:26,weight:.semibold))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.black)
                                .padding()
                        HStack {
                            Text("Enable Location Services to get full access to CrowdCheck.")
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Color.black).opacity(0.5)
                                
                        }
                        Spacer()
                        
                        VStack {
                            Button {
                                LocationManager.shared.requestLocation()
                            } label: {
                                Text("Allow Location")
                                    .padding()
                                    .font(.headline)
                                    .foregroundColor(colorScheme == .dark ? Color.black:Color.white)
                            }
                            .frame(width: UIScreen.main.bounds.width)
                            .padding(.horizontal,-50)
                            .background(Color.black)
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
