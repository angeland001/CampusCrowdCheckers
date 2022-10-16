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
    var IconName: String
    
    var body: some View {
        HStack {
                    Button(action: {
                        GetToScreen(ImageIcon: IconName)
                    }) {
                        if (IconName == "MoesLogo") {
                            Image(IconName)
                                .resizable()
                                .clipShape(Circle())
                                .frame(width:75,height:75)
                        }
                        else {
                            Image(IconName)
                                .resizable()
                                .clipShape(Circle())
                                .frame(width:70,height:70)
                        }
                        
                    }
                }

        }
}

struct IconsForLogin: View {
    
    var body: some View {
        VStack {
            Text("Hello")
        }
    }
}

struct ImageIcons_Previews: PreviewProvider {
    static var previews: some View {
        ImageIcons(IconName: "MoesLogo")
    }
}
