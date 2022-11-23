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
    @State private var clockStyle: ClockStyle = .steampunk
    var theme: Color
    var DataFile: String
    
    var body: some View {
        let gradient = Gradient(colors: [Color.theme.Background,theme])
        VStack {
            


            HStack{
                VStack {
                    Text("Busiest Hour")
                        .fontWeight(.bold)
                        .foregroundColor(Color.theme.text)
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
                }
                Spacer()
                VStack(alignment: .center) {
                    Group {
                        Text("High For Today")
                            
                    }
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.text)
                    
                        
                    
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
                            Gauge(value: 0.4, label: {
                                
                            }, currentValueLabel: {
                                Text("60")
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color.theme.Background
                                    )
                                
                            })
                            .scaleEffect(2)
                            .gaugeStyle(.accessoryCircular)
                            .tint(gradient)
                            
                            
                            
                        }
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
        InfoBoxes(theme: Color.white, DataFile: "ChickFilaData1")
    }
}

//                .fontWeight(.bold)
//                .foregroundColor(Color.theme.text)
//                .padding()
