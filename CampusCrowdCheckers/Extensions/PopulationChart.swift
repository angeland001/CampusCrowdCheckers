//
//  PopulationChart.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/18/22.
//

import SwiftUI
import Charts


//Plan in Action:

// Keep track of current day
// Bring back current Day to homeview at specific infographic
// If Restaurant is closed for the DAY, DISPLAY IT

     
        

struct GraphChart: Identifiable {
    var time: String
    var Populationcount: Int
    var animate: Bool = false
    var id = UUID()
}

struct ChartOfCrowd: View {
    
    var Theme: Color
    var Title: String

    @State var Data: [GraphChart] = data
    
    
    var body: some View {
     
        VStack() {
            HStack{
                Text("Population of " + (Title))
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.text)
                
            }
            
            
            Chart {
                ForEach(Data) { element in
                    BarMark(
                        x: .value("Time", element.time),
                        y: .value("Total Count", element.animate ?  element.Populationcount : 0)
                    )
                    .foregroundStyle(Theme.gradient)
                    
                }
            }
            
            .background(Color.theme.Background)
            .frame(width:390,height:180)
            .onAppear {
                for (index,_) in data.enumerated() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.05) {
                        withAnimation(.interactiveSpring(response: 0.8,dampingFraction: 0.8,blendDuration: 0.8)) {
                            data[index].animate = true
                        }
                    }
                }
            }


        }
            
                
           
        
      
        }
    
    
        
    }
    

    


    
    
    
    
    
    
    func getCurrentDay() -> String {
        //get current day of the week
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MMMM dd, yyyy"
        
        let currentDateString: String = dateFormatter.string(from: date)
        
        let ArrayOfString = currentDateString.components(separatedBy: ",")
        let CurrentWeekDay = ArrayOfString[0]
        return CurrentWeekDay
    }
    
    
    struct PopulationChart_Previews: PreviewProvider {
        static var previews: some View {
            ChartOfCrowd(Theme: Color.yellow, Title: "University Center")
        }
    }
    
    
    

