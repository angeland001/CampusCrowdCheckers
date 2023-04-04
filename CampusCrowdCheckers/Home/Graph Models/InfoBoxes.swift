//
//  InfoBoxes.swift
//  CampusCrowdCheckers
//
//  
//

import SwiftUI
import SwiftClockUI

struct InfoBoxes: View {
    @State var progressValue: Double = 0.0
    @State private var clockStyle: ClockStyle = .steampunk
    @Environment(\.colorScheme) var colorScheme
    

    var theme: Color
    var DataFile: String
    
    var body: some View {
        
        
        let PopulationCountForDay = fillArrayOfCurrentDayCount()
        
        
        let largestNumInArr = PopulationCountForDay.max()
        
        
            HStack{
                VStack {
                    Text("Busiest Hour")
                        .fontWeight(.bold)
                        .foregroundColor(Color.theme.text)
                    ZStack{
                        RoundedRectangle(cornerRadius:10)
                            
                            .foregroundColor(Color.theme.Background)
                            .frame(
                                width:170,
                                height:170)
                            .shadow(radius: 10)
//
                        VStack {
                            ClockView().environment(\.clockStyle, clockStyle)
                                .frame(width: 150,height:150)
                            
                            
                        }
                    }
                }
                Spacer()
                VStack {
                    
                    Text("Count at Current Hour")
                        .multilineTextAlignment(.center)
                        //.fontWeight(.bold)
                        .foregroundColor(Color.theme.text)
                        .offset(x:-10,y:-20)
                    ZStack {
                        
                        ProgressBar(progress: self.$progressValue, theme: theme)
                            
                            .frame(width: 130,height:130)
                            .shadow(color: colorScheme == .dark ? .white : .black, radius: 10)
                            .onAppear {
                                self.progressValue = convertNumberToPercentage(PopulationCount: PopulationCountForDay)
                            }
                        Text(String(largestNumInArr!))
                            .font(.title)
                            .fontWeight(.bold)
                            
                    }
                       
                            
                            
                            
                            
                        
                    
                }
                
            }
            .padding()
       
        
    }
}

struct ProgressBar: View {
    @Binding var progress: Double
    var theme: Color
        
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.20)
                .foregroundColor(Color.gray)
            Circle()
                
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 12.0,lineCap: .round,lineJoin: .round))
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeInOut(duration: 2.0))
                .foregroundColor(theme)
        }
    }
    
    
}

private func convertNumberToPercentage(PopulationCount: [Int]) -> Double {
    let (min,max) = (0,30)
    let range = max - min
    guard let input = PopulationCount.max() else { return 0 }
        
    let correctedStartValue = input - min
    let percentage = (correctedStartValue * 100) / range
        
    return Double(percentage) / 100
    
}





struct InfoBoxes_Previews: PreviewProvider {
    static var previews: some View {
        InfoBoxes(theme: Color.white, DataFile: "ChickFilaData1")
    }
}


