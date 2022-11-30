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
            Color.theme.Background
                        .ignoresSafeArea()
                    VStack {
                        Spacer()
                        Image(systemName: "paperplane.circle.fill")
                            
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200,height:200)
                            .padding(.bottom,32)
                            .foregroundColor(Color.theme.text)
                        
                        
                            Text("Would you like to start seeing your location's population numbers?")
                                .font(.system(size:26,weight:.semibold))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.theme.text)
                                .padding()
                        
                            Text("Allow To Access Full Features to CrowdCheck")
                            .multilineTextAlignment(.center)
                            .frame(width: 140)
                            .foregroundColor(Color.theme.text)
                            .padding()
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
                            .background(Color.theme.text)
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
