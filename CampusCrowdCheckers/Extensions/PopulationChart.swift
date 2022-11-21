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
    var isAnimated: Bool = false
    var id = UUID()
}

struct PopulationChart: View {
    
    var Theme: Color
    var Title: String
    var DataFile: String
    @State var scale = 1.0

    
    var body: some View {
        
        let currentDay = getCurrentDay()
        let datasheet = loadCSV(from: DataFile)
        
        VStack() {
            HStack{
                Text("Population of " + (Title))
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.text)
                
            }

            AnimatedChart(currentDay: currentDay, datasheet: datasheet, theme: Theme)
        }
            
                
                
            
            
            
        
                
        
      
        }
    
    @ViewBuilder
    func AnimatedChart(currentDay: String, datasheet: [DataForChart], theme: Color) -> some View {
        
       
        
        //y axis
        //array of population count
        let PopulationCountForDay = fillArrayOfCurrentDayCount(CurrentWeekDay: currentDay, datasheet: datasheet)
 
        
        //array of times
        //x axis
        let TimeForDay = fillArrayOfTime(datasheet: datasheet)
   
        var data: [GraphChart] = returnArrayOfObj(TimeOfDay: TimeForDay, Population: PopulationCountForDay)
        
        Chart {
            ForEach(data) { element in
                BarMark(
                    x: .value("Time", element.time),
                    y: .value("Total Count", element.Populationcount)
                )
                .foregroundStyle(theme.gradient)
                
            }
        }
        .background(Color.theme.Background)
        .frame(width:390,height:230)
        .onAppear {
            withAnimation(.default) {
                
            }
        }
        
        }
        
    }
    
    
            
    
    

func returnArrayOfObj(TimeOfDay: [String], Population: [Int]) -> [GraphChart] {
    var arrayOfData: [GraphChart] = []
    
    for (x,y) in zip(TimeOfDay,Population) {
        arrayOfData.append(GraphChart(time: x, Populationcount: y))
    }
        
    return arrayOfData
}

    
    
func generateRandomNumbers(size: Int) -> [Int] {
    guard size > 0 else {
        return [Int]()
    }
    
    let result = Array(repeating: 0, count: size)
    return result.map{ _ in Int.random(in: 0..<size)}
}
    
    func fillArrayOfCurrentDayCount(CurrentWeekDay: String, datasheet: [DataForChart]) ->[Int] {
        
        var arrayOfData: [Int] = []
        
        switch CurrentWeekDay {
        case "Monday":
            for element in datasheet {
                arrayOfData.append(Int(element.Monday) ?? 0)
            }
                    
        case "Tuesday":
            for element in datasheet {
                arrayOfData.append(Int(element.Tuesday) ?? 0)
            }

        case "Wednesday":
            for element in datasheet {
                
                arrayOfData.append(Int(element.Wednesday) ?? 0)
            }

        case "Thursday":
            for element in datasheet {
                arrayOfData.append(Int(element.Thursday) ?? 0)
            }

        case "Friday":
            for element in datasheet {
                arrayOfData.append(Int(element.Friday) ?? 0)
            }

        case "Saturday":
            for element in datasheet {
                arrayOfData.append(Int(element.Saturday) ?? 0)
            }

        case "Sunday":
            arrayOfData = generateRandomNumbers(size:10)


        default:
            for element in datasheet {
                arrayOfData.append(Int(element.Monday) ?? 0)
            }
        }
        
        return arrayOfData
        
    }
    
    func fillArrayOfTime(datasheet: [DataForChart]) -> [String] {
        var arrayOfData: [String] = []
        
            for element in datasheet {
                arrayOfData.append(element.TimeOfDay)
            }
                    
        
        return arrayOfData
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
        PopulationChart(Theme: Color.red, Title: "ChickFilA", DataFile: "ChickFilaData1")
    }
}
