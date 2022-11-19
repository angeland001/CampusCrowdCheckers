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
    var Populationcount: String
    var id = UUID()
}

struct PopulationChart: View {
    
    var Restaurant: String
    var DataFile: String
    

    
    var body: some View {
        
        var currentDay = getCurrentDay()
        var datasheet = loadCSV(from: DataFile)
        
        //y axis
        //array of population count
        var PopulationCountForDay = fillArrayOfCurrentDayCount(CurrentWeekDay: currentDay, datasheet: datasheet)
        
        
        
        
        //array of times
        //x axis
        var TimeForDay = fillArrayOfTime(CurrentWeekDay: currentDay, datasheet: datasheet)
   
        var data: [GraphChart] = returnArrayOfObj(TimeOfDay: TimeForDay, Population: PopulationCountForDay)
        
        Chart {
            ForEach(data) { element in
                BarMark(
                    x: .value("Time", element.time),
                    y: .value("Total Count", element.Populationcount)
                )
            }
        }
        .frame(width:380,height:200)
        

        }
    
    
            
    
    }

func returnArrayOfObj(TimeOfDay: [String], Population: [String]) -> [GraphChart] {
    var arrayOfData: [GraphChart] = []
    
    for (x,y) in zip(TimeOfDay,Population) {
        arrayOfData.append(GraphChart(time: x, Populationcount: y))
    }
        
    return arrayOfData
}

    
    
    
    
    func fillArrayOfCurrentDayCount(CurrentWeekDay: String, datasheet: [DataForChart]) -> [String] {
        
        var arrayOfData: [String] = []
        
        switch CurrentWeekDay {
        case "Monday":
            for element in datasheet {
                arrayOfData.append(element.Monday)
            }
                    
        case "Tuesday":
            for element in datasheet {
                arrayOfData.append(element.Tuesday)
            }

        case "Wednesday":
            for element in datasheet {
                
                arrayOfData.append(element.Wednesday)
            }

        case "Thursday":
            for element in datasheet {
                arrayOfData.append(element.Thursday)
            }

        case "Friday":
            for element in datasheet {
                arrayOfData.append(element.Friday)
            }

        case "Saturday":
            for element in datasheet {
                arrayOfData.append(element.Saturday)
            }

        case "Sunday":
            for element in datasheet {
                arrayOfData.append(element.Sunday)
            }


        default:
            for element in datasheet {
                arrayOfData.append(element.Monday)
            }
        }
        
        return arrayOfData
        
    }
    
    func fillArrayOfTime(CurrentWeekDay: String, datasheet: [DataForChart]) -> [String] {
        var arrayOfData: [String] = []
        
        switch CurrentWeekDay {
        case "Monday":
            for element in datasheet {
                arrayOfData.append(element.TimeOfDay)
            }
                    
        case "Tuesday":
            for element in datasheet {
                arrayOfData.append(element.TimeOfDay)
            }

        case "Wednesday":
            for element in datasheet {
                arrayOfData.append(element.TimeOfDay)
            }

        case "Thursday":
            for element in datasheet {
                arrayOfData.append(element.TimeOfDay)
            }

        case "Friday":
            for element in datasheet {
                arrayOfData.append(element.TimeOfDay)
            }

        case "Saturday":
            for element in datasheet {
                arrayOfData.append(element.TimeOfDay)
            }

        case "Sunday":
            for element in datasheet {
                arrayOfData.append(element.TimeOfDay)
            }


        default:
            for element in datasheet {
                arrayOfData.append(element.TimeOfDay)
            }
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
        PopulationChart(Restaurant: "ChickFilA", DataFile: "ChickFilaData")
    }
}
