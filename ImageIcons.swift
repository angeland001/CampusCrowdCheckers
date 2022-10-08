//
//  ImageIcons.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/12/22.
//

import SwiftUI

func GetToScreen(ImageIcon:String) {
    switch ImageIcon {
    case "ChickFilALogo":
        print("Hello!")
    case "MoesLogo":
        print("Hola!")
    case "PandaLogo":
        print("Hello!")
    case "PodLogo":
        print("Hola!")
    case "RRLogo":
        print("Hola!")
        
    default:
        print("Error")
    }
}



struct ImageIcons: View {
    var body: some View {
        ZStack {
                    HStack {
                        Button(action: {
                            GetToScreen(ImageIcon: "ChickFilALogo")
                        }){
                            Image("ChickFilALogo")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width:70,height:70)
                        }
                        Button(action: {
                            GetToScreen(ImageIcon: "MoesLogo")
                        }) {
                            Image("MoesLogo")
                                .resizable()
                                .frame(width:70,height:70)
                                .clipShape(Circle())
                        }
                        Button(action: {
                            GetToScreen(ImageIcon: "PandaLogo")
                        }) {
                            Image("PandaLogo")
                                .resizable()
                                .frame(width:70,height:70)
                        }
                        Button(action: {
                            GetToScreen(ImageIcon: "PodLogo")
                        }) {
                            Image("PodLogo")
                                .resizable()
                                .frame(width: 70,height:70)
                                .clipShape(Circle())
                        }
                        Button(action: {
                            GetToScreen(ImageIcon: "RRLogo")
                        }) {
                            Image("RRLogo")
                                .resizable()
                                .frame(width:70,height:70)
                                .clipShape(Circle())
                        }
                        
                        
                        
                    }
                    .background(Color.gray)
                    .cornerRadius(15)
                    .offset(y:-270)
                   
                        
                    
                        
                    
                    
                }

            }
}

struct ImageIcons_Previews: PreviewProvider {
    static var previews: some View {
        ImageIcons()
    }
}
