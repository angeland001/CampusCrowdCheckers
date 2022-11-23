//
//  ContentView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/7/22.
//

import SwiftUI
import Charts

struct HomeView: View {
    
    //keep track of current infographic to change graphs when needed
    @State var PageIndex = 0
    
    @Environment(\.colorScheme) var colorScheme
    
    
    
    
    var body: some View {
        
        ZStack {
            Color.theme.Background
                .ignoresSafeArea()
            
            
            VStack {
                Infographics(PageIndex: $PageIndex)
                    .frame(height:280)
                
                
                    //if the infographic changes... change graph output
                    ScrollView {
                            VStack(alignment: .leading) {
                                switch PageIndex {
                                case 0:
                                    ChartOfCrowd(Theme: Color.yellow, Title: "University Center")
                                    InfoBoxes(theme: Color.yellow, DataFile: "UCData1")
                                case 1:
                                    ChartOfCrowd(Theme: Color.red, Title: "Chick-Fil-a")
                                    InfoBoxes(theme: Color.red, DataFile: "ChickFilaData1")
                                    
                                case 2:
                                    ChartOfCrowd(Theme: Color.theme.StarbucksInfographic, Title: "Starbucks")
                                    InfoBoxes(theme: Color.theme.StarbucksInfographic, DataFile: "UCData1")
                                case 3:
                                    ChartOfCrowd(Theme: Color.cyan, Title: "Moes")
                                    InfoBoxes(theme: Color.cyan, DataFile: "MoesData1")
                                case 4:
                                    ChartOfCrowd(Theme: Color.green, Title: "Pod Market")
                                    InfoBoxes(theme: Color.green, DataFile: "PodData1")
                                case 5:
                                    ChartOfCrowd(Theme: Color.orange, Title: "Panda Express")
                                    InfoBoxes(theme: Color.orange, DataFile: "PandaData1")
                                case 6:
                                    ChartOfCrowd(Theme: colorScheme == .dark ? .white : .black, Title: "Restaurant Row")
                                    InfoBoxes(theme: Color.white, DataFile: "RRData1")
                                default:
                                    ChartOfCrowd(Theme: Color.white, Title: "University Center")
                                    
                                }
                                    
                                
                            }
                        }
                    .scrollContentBackground(.hidden)
                    
                    
                
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

