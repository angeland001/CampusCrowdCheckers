//
//  ContentView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI

struct HomeView: View {
    
    //keep track of current infographic to change graphs when needed
    @State var PageIndex = 0
    
    
    
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            
            VStack {
                Infographics(PageIndex: $PageIndex)
                    .frame(height:280)
                
                
                    //if the infographic changes... change graph output
                    ScrollView {
                            VStack(alignment: .leading) {
                                switch PageIndex {
                                case 0:
                                    PopulationChart(Theme: Color.white, DataFile: "UCData1")
                                case 1:
                                    PopulationChart(Theme: Color.red, DataFile: "ChickFilaData1")
                                case 2:
                                    PopulationChart(Theme: Color.theme.StarbucksInfographic, DataFile: "UCData1")
                                case 3:
                                    PopulationChart(Theme: Color.cyan, DataFile: "MoesData1")
                                case 4:
                                    PopulationChart(Theme: Color.green, DataFile: "PodData1")
                                case 5:
                                    PopulationChart(Theme: Color.orange, DataFile: "PandaData1")
                                case 6:
                                    PopulationChart(Theme: Color.white, DataFile: "RRData1")
                                default:
                                    PopulationChart(Theme: Color.white, DataFile: "UCData1")
                                    
                                }
                                    
                                
                            }
                        }
                    
                    
                
                }
            
            
            
                
                
            }
            .ignoresSafeArea()
            
            
            
        }
            
   
    }
    
    




    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

