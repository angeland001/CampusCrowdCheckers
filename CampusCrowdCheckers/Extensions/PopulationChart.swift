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

struct ChartofUC: View {
    
    
    @State var Data: [GraphChart] = dataForUC
    
    
    
    
    var body: some View {
        

        VStack() {
            HStack{
                Text("Population of " + ("University Center"))
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.text)
                
            }
            
            
            Chart {
                ForEach(Data) { element in
                    BarMark(
                        x: .value("Time", element.time),
                        y: .value("Total Count", element.animate ?  element.Populationcount : 0)
                    )
                    .foregroundStyle(Color.white.gradient)
                    
                }
            }
            
            .background(Color.theme.Background)
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

struct ChartofChickFila: View {
    
    
    @State var Data: [GraphChart] = dataForChickFilA
    
    
    
    
    var body: some View {
        

        VStack() {
            HStack{
                Text("Population of " + ("Chick-Fil-a"))
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.text)
                
            }
            
            
            Chart {
                ForEach(Data) { element in
                    BarMark(
                        x: .value("Time", element.time),
                        y: .value("Total Count", element.animate ?  element.Populationcount : 0)
                    )
                    .foregroundStyle(Color.red.gradient)
                    
                }
            }
            
            .background(Color.theme.Background)
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
    

struct ChartofStarbucks: View {
    
    
    @State var Data: [GraphChart] = dataForChickFilA
    
    
    
    
    var body: some View {
        

        VStack() {
            HStack{
                Text("Population of " + ("Starbucks"))
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.text)
                
            }
            
            
            Chart {
                ForEach(Data) { element in
                    BarMark(
                        x: .value("Time", element.time),
                        y: .value("Total Count", element.animate ?  element.Populationcount : 0)
                    )
                    .foregroundStyle(Color.theme.StarbucksInfographic)
                    
                }
            }
            
            .background(Color.theme.Background)
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
    
struct ChartofMoes: View {
    
    
    @State var Data: [GraphChart] = dataForMoes
    
    
    
    
    var body: some View {
        

        VStack() {
            HStack{
                Text("Population of " + ("Moes"))
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.text)
                
            }
            
            
            Chart {
                ForEach(Data) { element in
                    BarMark(
                        x: .value("Time", element.time),
                        y: .value("Total Count", element.animate ?  element.Populationcount : 0)
                    )
                    .foregroundStyle(Color.cyan.gradient)
                    
                }
            }
            
            .background(Color.theme.Background)
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

struct ChartofPod: View {
    
    
    @State var Data: [GraphChart] = dataForPod
    
    
    
    
    var body: some View {
        

        VStack() {
            HStack{
                Text("Population of " + ("Pod Market"))
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.text)
                
            }
            
            
            Chart {
                ForEach(Data) { element in
                    BarMark(
                        x: .value("Time", element.time),
                        y: .value("Total Count", element.animate ?  element.Populationcount : 0)
                    )
                    .foregroundStyle(Color.green.gradient)
                    
                }
            }
            
            .background(Color.theme.Background)
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

struct ChartofPanda: View {
    
    
    @State var Data: [GraphChart] = dataForPanda
    
    
    
    
    var body: some View {
        

        VStack() {
            HStack{
                Text("Population of " + ("Panda Express"))
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.text)
                
            }
            
            
            Chart {
                ForEach(Data) { element in
                    BarMark(
                        x: .value("Time", element.time),
                        y: .value("Total Count", element.animate ?  element.Populationcount : 0)
                    )
                    .foregroundStyle(Color.theme.PandaInfographic)
                    
                }
            }
            
            .background(Color.theme.Background)
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
    
    
struct ChartofRR: View {
    
    
    @State var Data: [GraphChart] = dataForRR
    
    
    
    
    var body: some View {
        

        VStack() {
            HStack{
                Text("Population of " + ("Restaurant Row"))
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.text)
                
            }
            
            
            Chart {
                ForEach(Data) { element in
                    BarMark(
                        x: .value("Time", element.time),
                        y: .value("Total Count", element.animate ?  element.Populationcount : 0)
                    )
                    .foregroundStyle(Color.theme.text)
                    
                }
            }
            
            .background(Color.theme.Background)
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
            ChartofChickFila()
        }
    }
    
    
    

