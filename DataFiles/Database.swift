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


