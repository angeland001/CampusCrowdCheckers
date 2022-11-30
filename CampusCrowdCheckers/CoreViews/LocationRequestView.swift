//
//  LocationRequestView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/4/22.
//

import SwiftUI

struct LocationRequestView: View {
    var body: some View {
        ZStack {
                    Color.black
                        .ignoresSafeArea()
                    VStack {
                        Spacer()
                        Image(systemName: "paperplane.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200,height:200)
                            .padding(.bottom,32)
                        
                            Text("Would you like to start seeing your location's population numbers?")
                                .font(.system(size:26,weight:.semibold))
                                .multilineTextAlignment(.center)
                                .padding()
                        
                            Text("Allow To Access Full Features to CrowdCheck")
                            .multilineTextAlignment(.center)
                            .frame(width: 140)
                            .padding()
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
                            .padding(.horizontal,-32)
                            .background(Color.white)
                            .clipShape(Capsule())
                            .padding()
                            
                            Button {
                                print("Dismiss")
                            } label: {
                                Text("Configure Later")
                                    .padding()
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                            }


                        }
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
