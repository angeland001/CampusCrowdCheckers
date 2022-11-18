//
//  PopulationChart.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/18/22.
//

import SwiftUI


//Plan in Action:

//Keep track of current day
//Bring back current Day to homeview at specific infographic
//If Restaurant is closed for the DAY, DISPLAY IT



struct PopulationChart: View {
    var datasheet = loadCSV(from: "ChickFilaData")
    var body: some View {
        ZStack {
            Color.black
            List(datasheet){ count in
                Text(count.TimeOfDay)
                    .foregroundColor(Color.black)
            
                
                
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
        PopulationChart()
    }
}
