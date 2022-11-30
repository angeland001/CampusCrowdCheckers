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
                                    InfoBoxes(theme: colorScheme == .dark ? Color.white: Color.black, DataFile: "UCData1")
                                    ChartofUC()
                                    
                                case 1:
                                    InfoBoxes(theme: Color.red, DataFile: "ChickFilaData1")
                                    ChartofChickFila()
                                    
                                    
                                case 2:
                                    InfoBoxes(theme: Color.theme.StarbucksInfographic, DataFile: "ChickFilaData1")
                                    ChartofStarbucks()
                                    
                                case 3:
                                    InfoBoxes(theme: Color.cyan, DataFile: "MoesData1")
                                    ChartofMoes()
                                    
                                case 4:
                                    InfoBoxes(theme: Color.green, DataFile: "PodData1")
                                    ChartofPod()
                                    
                                case 5:
                                    InfoBoxes(theme: Color.orange, DataFile: "PandaData1")
                                    ChartofPanda()
                                    
                                case 6:
                                    InfoBoxes(theme: colorScheme == .dark ? Color.white: Color.black, DataFile: "RRData1")
                                    ChartofRR()
                                                                        
                                    Button {
                                        PageIndex = 0
                                    } label: {
                                        Text("Back To Front")
                                            .bold()
                                            .frame(width:150,height:50)
                                            .foregroundColor(colorScheme == .dark ? Color.white: Color.black)
                                            .background(colorScheme == .dark ? Color.black: Color.white)
                                            .clipShape(Capsule())
                                    }.padding(.all)

                                    
                                default:
                                    InfoBoxes(theme: Color.white, DataFile: "RRData1")
                                    ChartofUC()
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

