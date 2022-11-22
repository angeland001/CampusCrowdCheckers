//
//  InfoBoxes.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/22/22.
//

import SwiftUI

struct InfoBoxes: View {
    var theme: Color
    var DataFile: String
    
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius:10)
                    .fill(theme)
                    .frame(
                        width:170,
                        height:170)
                    .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.theme.Stroke, lineWidth: 5)
                            )
                VStack {
                    Text("Hello")
                }
            }
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius:10)
                    .fill(theme)
                    .frame(
                        width:170,
                        height:170)
                    .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.theme.Stroke, lineWidth: 5)
                            )
                VStack {
                    Text("Hello")
                }
            }
            
        }
        .padding()
    }
}

struct InfoBoxes_Previews: PreviewProvider {
    static var previews: some View {
        InfoBoxes(theme: Color.red, DataFile: "ChickFilaData1")
    }
}
