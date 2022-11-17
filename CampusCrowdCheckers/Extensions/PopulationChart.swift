//
//  PopulationChart.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/18/22.
//

import SwiftUI

struct Population: Identifiable {
    var count: Double
    var time: String
    var id = UUID()
}

var data: [Population] = [

]


struct PopulationChart: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PopulationChart_Previews: PreviewProvider {
    static var previews: some View {
        PopulationChart()
    }
}
