//
//  InfoBoxes.swift
//  CampusCrowdCheckers
//
//  
//

import SwiftUI
import SwiftClockUI



struct ProgressBar: View {
    @Binding var progress: Double
        
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
                .foregroundColor(Color.white)
        }
    }
    
    
}

 func convertNumberToPercentage(PopulationCount: Int) -> Double {
    let (min,max) = (0,100)
    let range = max - min
    let input = PopulationCount
        
     let correctedStartValue = input - min
    let percentage = (correctedStartValue * 100) / range
        
    return Double(percentage) / 100
    
}





//struct InfoBoxes_Previews: PreviewProvider {
//    static var previews: some View {
//        ProgressBar(progress: <#T##Binding<Double>#>)
//    }
//}


