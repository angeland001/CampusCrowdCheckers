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
        
        let datasheet = loadCSV(from: DataFile)
        let PopulationCountForDay = fillArrayOfCurrentDayCount(CurrentWeekDay: getCurrentDays(), datasheet: datasheet)
        
        
        let largestNumInArr = PopulationCountForDay.max()
        
        
        
        


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
                VStack {
                    
                    Text("High For Today")
                        .fontWeight(.bold)
                        .foregroundColor(Color.theme.text)
                        .offset(x:-20,y:-55)
                    
                    Gauge(value: 0.4, label: {
                        
                    }, currentValueLabel: {
                        Text(String(largestNumInArr ?? 10))
                            .fontWeight(.heavy)
                            .foregroundColor(Color.theme.text
                            )
                        
                    }, minimumValueLabel: {
                        Text("0")
                            .foregroundColor(Color.theme.text)
                    }, maximumValueLabel: {
                        DataFile == "UCData1" ? Text("300").foregroundColor(Color.theme.text) : Text("30")
                            .foregroundColor(Color.theme.text)
                    })
                    .scaleEffect(2)
                    .gaugeStyle(.accessoryCircular)
                    .tint(theme)
                    .offset(x:-20)
                       
                            
                            
                            
                            
                        
                    
                }
                
            }
            .padding()
       
        
    }
}





struct InfoBoxes_Previews: PreviewProvider {
    static var previews: some View {
        InfoBoxes(theme: Color.white, DataFile: "ChickFilaData1")
    }
}


