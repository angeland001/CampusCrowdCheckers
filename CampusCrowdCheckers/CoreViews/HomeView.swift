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
                            VStack(alignment: .center) {
                                switch PageIndex {
                                case 0:
                                    InfoBoxes(theme: Color.yellow, DataFile: "UCData1")
                                    ChartOfCrowd(Theme: Color.yellow, Title: "University Center", datafile: "UCData1")
                                    
                                case 1:
                                    InfoBoxes(theme: Color.red, DataFile: "ChickFilaData1")
                                    ChartOfCrowd(Theme: Color.red, Title: "Chick-Fil-a", datafile: "ChickFilaData1")
                                    
                                    
                                case 2:
                                    InfoBoxes(theme: Color.theme.StarbucksInfographic, DataFile: "ChickFilaData1")
                                    ChartOfCrowd(Theme: Color.theme.StarbucksInfographic, Title: "Starbucks", datafile: "ChickFilaData1")
                                    
                                case 3:
                                    InfoBoxes(theme: Color.cyan, DataFile: "MoesData1")
                                    ChartOfCrowd(Theme: Color.cyan, Title: "Moes", datafile: "MoesData1")
                                    
                                case 4:
                                    InfoBoxes(theme: Color.green, DataFile: "PodData1")
                                    ChartOfCrowd(Theme: Color.green, Title: "Pod Market", datafile: "PodData1")
                                    
                                case 5:
                                    InfoBoxes(theme: Color.orange, DataFile: "PandaData1")
                                    ChartOfCrowd(Theme: Color.orange, Title: "Panda Express", datafile: "PandaData1")
                                    
                                case 6:
                                    InfoBoxes(theme: Color.white, DataFile: "RRData1")
                                    ChartOfCrowd(Theme: colorScheme == .dark ? .white : .black, Title: "Restaurant Row", datafile: "RRData1")
                                    
                                    Button {
                                        PageIndex = 0
                                    } label: {
                                        Text("Back To Front")
                                            .bold()
                                            .frame(width:150,height:50)
                                            .foregroundColor(Color.white)
                                            .background(Color.theme.Stroke)
                                            .clipShape(Capsule())
                                    }.padding(.all)

                                    
                                default:
                                    ChartOfCrowd(Theme: Color.white, Title: "University Center", datafile: "UCData1")
                                    
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

