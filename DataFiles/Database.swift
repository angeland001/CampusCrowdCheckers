//
//  Database.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/18/22.
//

import Foundation
import SwiftUI
import UIKit

struct DataForChart: Identifiable{
    
    var TimeOfDay: String = ""
    var Monday: String = ""
    var Tuesday: String = ""
    var Wednesday: String = ""
    var Thursday: String = ""
    var Friday: String = ""
    var Saturday: String = ""
    var Sunday: String = ""
    var id = UUID()

    init(raw: [String]) {
        TimeOfDay = raw[0]
        Monday = raw[1]
        Tuesday = raw[2]
        Wednesday = raw[3]
        Thursday = raw[4]
        Friday = raw[5]
        Saturday = raw[6]
        Sunday = raw[7]
        
    }
}
        
        let datasheet = loadCSV(from: "ChickFilaData1")
                        
        //array of population count
        let PopulationCountForDay = fillArrayOfCurrentDayCount(CurrentWeekDay: getCurrentDays(), datasheet: datasheet)

        //array of times
        //x axis
        let TimeForDay = fillArrayOfTime(datasheet: datasheet)
        
        var data: [GraphChart] = returnArrayOfObj(TimeOfDay: TimeForDay, Population: PopulationCountForDay)

func getCurrentDays() -> String {
    //get current day of the week
    let date = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EEEE, MMMM dd, yyyy"
    
    let currentDateString: String = dateFormatter.string(from: date)
    
    let ArrayOfString = currentDateString.components(separatedBy: ",")
    let CurrentWeekDay = ArrayOfString[0]
    return CurrentWeekDay
}

func returnArrayOfObj(TimeOfDay: [String], Population: [Int]) -> [GraphChart] {
    var arrayOfData: [GraphChart] = []
    
    for (x,y) in zip(TimeOfDay,Population) {
        arrayOfData.append(GraphChart(time: x, Populationcount: y))
    }
        
    return arrayOfData
}






func loadCSV(from csvName: String) -> [DataForChart] {
    
    var csvToStruct = [DataForChart]()
    
    //locate csvFile
    guard let filePath = Bundle.main.path(forResource: csvName, ofType: "csv") else {
        return []
    }
    
    //convert the contents of ther file into one very long string
    
    var data = ""
    do {
        data = try String(contentsOfFile: filePath)
    } catch {
        print(error)
        return []
    }
    
    //split the long string into an array of rows of data each row is a string
    //detect "/n" carriage return then split
    var rows = data.components(separatedBy: "\n")
    
    
    //remove header rows
    //count the number of header columns before removing
    
    let columnCount = rows.first?.components(separatedBy: ",").count
    rows.removeFirst()
    
    //now loop around each row and split into columns
    for row in rows {
        let csvColumns = row.components(separatedBy: ",")
        if csvColumns.count == columnCount {
            let dataStruct = DataForChart.init(raw:csvColumns)
            csvToStruct.append(dataStruct)
        }
        
    }
    
    return csvToStruct
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

func generateRandomNumbers(size: Int) -> [Int] {
    guard size > 0 else {
        return [Int]()
    }
    
    let result = Array(repeating: 0, count: size)
    return result.map{ _ in Int.random(in: 0..<size)}
}




//func updateDataSheet(title: String) -> [GraphChart] {
//    let currentDay = getCurrentDay()
//    var arrayOfData: [GraphChart] = []
//
//    switch title {
//    case "Chick-Fil-a":
//        let datasheet = loadCSV(from: "ChickFilaData1")
//
//        //y axis
//        //array of population count
//        let PopulationCountForDay = fillArrayOfCurrentDayCount(CurrentWeekDay: currentDay, datasheet: datasheet)
//
//        //array of times
//        //x axis
//        let TimeForDay = fillArrayOfTime(datasheet: datasheet)
//
//        arrayOfData = returnArrayOfObj(TimeOfDay: TimeForDay, Population: PopulationCountForDay)
//
//    case "Starbucks":
//        let datasheet = loadCSV(from: "UCData1")
//
//        //y axis
//        //array of population count
//        let PopulationCountForDay = fillArrayOfCurrentDayCount(CurrentWeekDay: currentDay, datasheet: datasheet)
//
//        //array of times
//        //x axis
//        let TimeForDay = fillArrayOfTime(datasheet: datasheet)
//
//        arrayOfData = returnArrayOfObj(TimeOfDay: TimeForDay, Population: PopulationCountForDay)
//
//    case "Moes":
//        let datasheet = loadCSV(from: "MoesData1")
//
//        //y axis
//        //array of population count
//        let PopulationCountForDay = fillArrayOfCurrentDayCount(CurrentWeekDay: currentDay, datasheet: datasheet)
//
//        //array of times
//        //x axis
//        let TimeForDay = fillArrayOfTime(datasheet: datasheet)
//
//        arrayOfData = returnArrayOfObj(TimeOfDay: TimeForDay, Population: PopulationCountForDay)
//
//    case "Pod Market":
//        let datasheet = loadCSV(from: "PodData1")
//
//        //y axis
//        //array of population count
//        let PopulationCountForDay = fillArrayOfCurrentDayCount(CurrentWeekDay: currentDay, datasheet: datasheet)
//
//        //array of times
//        //x axis
//        let TimeForDay = fillArrayOfTime(datasheet: datasheet)
//
//        arrayOfData = returnArrayOfObj(TimeOfDay: TimeForDay, Population: PopulationCountForDay)
//
//    case "Panda Express":
//        let datasheet = loadCSV(from: "PandaData1")
//
//        //y axis
//        //array of population count
//        let PopulationCountForDay = fillArrayOfCurrentDayCount(CurrentWeekDay: currentDay, datasheet: datasheet)
//
//        //array of times
//        //x axis
//        let TimeForDay = fillArrayOfTime(datasheet: datasheet)
//
//        arrayOfData = returnArrayOfObj(TimeOfDay: TimeForDay, Population: PopulationCountForDay)
//
//    case "Restaurant Row":
//        let datasheet = loadCSV(from: "RRData1")
//
//        //y axis
//        //array of population count
//        let PopulationCountForDay = fillArrayOfCurrentDayCount(CurrentWeekDay: currentDay, datasheet: datasheet)
//
//        //array of times
//        //x axis
//        let TimeForDay = fillArrayOfTime(datasheet: datasheet)
//
//        arrayOfData = returnArrayOfObj(TimeOfDay: TimeForDay, Population: PopulationCountForDay)
//
//    default:
//        let datasheet = loadCSV(from: "UCData1")
//
//        //y axis
//        //array of population count
//        let PopulationCountForDay = fillArrayOfCurrentDayCount(CurrentWeekDay: currentDay, datasheet: datasheet)
//
//        //array of times
//        //x axis
//        let TimeForDay = fillArrayOfTime(datasheet: datasheet)
//
//        arrayOfData = returnArrayOfObj(TimeOfDay: TimeForDay, Population: PopulationCountForDay)
//
//
//    }
//    return arrayOfData
//}
