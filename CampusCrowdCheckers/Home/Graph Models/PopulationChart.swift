//
//  PopulationChart.swift
//  CampusCrowdCheckers
//
//  
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


struct EmptyVenueChart: View {
    
    
    @State var Data: [GraphChart] = EmptyChart
    
    @Environment(\.colorScheme) var colorScheme
    var school: SchoolVenues
    
    var body: some View {
        

        VStack() {
            HStack{
                Text("Population of " + school.VenueName)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
            }
            
            
            Chart {
                ForEach(Data) { element in
                    BarMark(
                        x: .value("Time", element.time),
                        y: .value("Total Count", element.animate ?  element.Populationcount : 0)
                    )
                    .foregroundStyle(Color[school.colorOfVenue])
                    
                    
                }
            }
            .background(.clear)
            .frame(width:390,height:170)
            .onAppear {
                for (index,_) in Data.enumerated() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.05) {
                        withAnimation(.interactiveSpring(response: 0.8,dampingFraction: 0.8,blendDuration: 0.8)) {
                            Data[index].animate = true
                        }
                    }
                }
            }


        }
            
                
           
        
      
        }
    
    
        
    }





struct SchoolVenueChart: View {
    
    
    @State var Data: [GraphChart] = DataChartTwo
    
    @Environment(\.colorScheme) var colorScheme
    var school: SchoolVenues
    
    var body: some View {
        

        VStack() {
            HStack{
                Text("Population of " + school.VenueName)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                
            }
            
            
            Chart {
                ForEach(Data) { element in
                    BarMark(
                        x: .value("Time", element.time),
                        y: .value("Total Count", element.animate ?  element.Populationcount : 0)
                    )
                    .foregroundStyle(Color[school.colorOfVenue])
                    
                    
                }
            }
            .background(.clear)
            .frame(width:390,height:170)
            .onAppear {
                for (index,_) in Data.enumerated() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.05) {
                        withAnimation(.interactiveSpring(response: 0.8,dampingFraction: 0.8,blendDuration: 0.8)) {
                            Data[index].animate = true
                        }
                    }
                }
            }


        }
            
                
           
        
      
        }
    
    
        
    }

struct VenueChart: View {
    
    
    @State var Data: [GraphChart] = DataChartOne
    
    @Environment(\.colorScheme) var colorScheme
    var venue: VenueElement
    
    var body: some View {
        

        VStack() {
            HStack{
                Text("Population of " + venue.venue_name)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                
            }
            
            
            Chart {
                ForEach(Data) { element in
                    BarMark(
                        x: .value("Time", element.time),
                        y: .value("Total Count", element.animate ?  element.Populationcount : 0)
                    )
                    .foregroundStyle(Color.white)
                    
                    
                }
            }
            .background(Color("Jenni"))
            .frame(width:390,height:170)
            .onAppear {
                for (index,_) in Data.enumerated() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.05) {
                        withAnimation(.interactiveSpring(response: 0.8,dampingFraction: 0.8,blendDuration: 0.8)) {
                            Data[index].animate = true
                        }
                    }
                }
            }
            .chartXAxis {
              AxisMarks(values: .automatic) { _ in
                AxisValueLabel()
                      .foregroundStyle(.white)
              }
              
            }
            
            .chartYAxis {
              AxisMarks(values: .automatic) { value in
                AxisGridLine(centered: true, stroke: StrokeStyle(dash: [1, 2]))
                  .foregroundStyle(Color.white)
                AxisTick(centered: true, stroke: StrokeStyle(lineWidth: 2))
                  .foregroundStyle(Color.red)
                AxisValueLabel() {
                  if let intValue = value.as(Int.self) { // HERE
                    Text("\(intValue)")
                      .font(.system(size: 10))
                      .foregroundColor(.white)
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
            ZStack {
                Color("Jenni")
                EmptyVenueChart(school: dev.schoolVenue)
            }
        }
    }
    
    
    

