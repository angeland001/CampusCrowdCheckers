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

func fillArrayOfCurrentDayCount() ->[Int] {
    
    var arrayOfData: [Int] = []
    
    
    arrayOfData = generateRandomNumbers(size: 30)


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






func updateDataSheet() -> [GraphChart] {
    let currentDay = getCurrentDay()
    var arrayOfData: [GraphChart] = []

    let datasheet = loadCSV(from: "PandaData1")

    //y axis
    //array of population count
    let PopulationCountForDay = fillArrayOfCurrentDayCount()

    //array of times
    //x axis
    let TimeForDay = fillArrayOfTime(datasheet: datasheet)

    arrayOfData = returnArrayOfObj(TimeOfDay: TimeForDay, Population: PopulationCountForDay)
    return arrayOfData
}

var dataForPanda: [GraphChart] = updateDataSheet()
