//
//  InfoBoxes.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/22/22.
//

import SwiftUI
import SwiftClockUI

struct InfoBoxes: View {
    @State private var date = Date()
    @State private var clockStyle: ClockStyle = .classic
    var theme: Color
    var DataFile: String
    
    var body: some View {
        VStack {
            StylePicker(clockStyle: $clockStyle)
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
                        ClockView().environment(\.clockStyle, clockStyle)
                            .frame(width: 150,height:150)
                        
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
                        ClockView().environment(\.clockStyle, clockStyle)
                            .frame(width: 150,height:150)
                    }
                }
                
            }
            .padding()
        }
        
    }
}

struct StylePicker: View {
    @Binding var clockStyle: ClockStyle

    var body: some View {
        Picker("Style", selection: $clockStyle) {
            ForEach(ClockStyle.allCases) { style in
                Text(style.description).tag(style)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}

struct InfoBoxes_Previews: PreviewProvider {
    static var previews: some View {
        InfoBoxes(theme: Color.red, DataFile: "ChickFilaData1")
    }
}

//            HStack(spacing:50) {
//                Text("Busiest Hour")
//                    .fontWeight(.semibold)
//
//                Text("Recommended Time for Departure")
//                    .fontWeight(.semibold)
//            }
