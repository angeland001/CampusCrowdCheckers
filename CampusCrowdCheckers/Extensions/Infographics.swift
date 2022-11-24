//
//  Infographics.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/9/22.
//

import SwiftUI

struct Infographics: View {
    @Binding var PageIndex: Int
    @State var isAnimated: Bool = false
    
    var body: some View {
            
        TabView(selection: $PageIndex) {
                //insert infographics sequentially
                HomeInfo(image: "house.circle.fill").tag(0)
                ChickFilAInfo(image: "chickfilalogo").tag(1)
                StarbucksInfo(image: "StarbuckLogo").tag(2)
                MoesInfo(image: "MoesLogo").tag(3)
                PodInfo(image: "podlogo").tag(4)
                PandaInfo(image: "PandaLogo").tag(5)
                RRInfo(image: "RRLogo").tag(6)
                
            }
            //.frame(height:320)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        
        
    }
        
        
}


struct HomeInfo: View {
   
    var image: String
    
    var body: some View {
        ZStack {
           
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.yellow)
                .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.theme.Stroke, lineWidth: 5)
                        )
                
            
            HStack {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 105,height:105)
                    .overlay {
                        Circle().stroke(Color.theme.Stroke, lineWidth: 4)
                    }
                    
                
                
                    
                VStack {
                    Text("Fall Hours")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .bold()
                    Divider()
                        .frame(width:200)
                    Text("Monday - Friday")
                        .italic()
                        .foregroundColor(Color.white)
                    Text("7:30AM - 8:00PM")
                        .bold()
                        .foregroundColor(Color.white)
                    Text("Saturday")
                        .italic()
                        .foregroundColor(Color.white)
                    Text("11:00AM - 8:00PM")
                        .bold()
                        .foregroundColor(Color.white)
                    Text("Sunday")
                        .italic()
                        .foregroundColor(Color.white)
                    Text("Closed")
                        .bold()
                        .foregroundColor(Color.white)
                    
                        
                }
               
                
                    
                    
                    
                    
            }
        }
        .frame(height:200)
        .padding()
        
        
        
    }
        
}
    

struct ChickFilAInfo: View {
    var image: String
    
   
    var body: some View {
        
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.red)
                .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.theme.Stroke, lineWidth: 5)
                        )
            
                HStack {
                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 105,height:105)
                        .overlay {
                            Circle().stroke(Color.white, lineWidth: 4)
                        }
                        .fontWeight(.semibold)
                
                
                    
                VStack {
                    Text("Fall Hours")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .bold()
                    Divider()
                        .frame(width:200)
                    Text("Monday - Friday")
                        .italic()
                        .foregroundColor(Color.white)
                    Text("7:30AM - 8:00PM")
                        .bold()
                        .foregroundColor(Color.white)
                    Text("Saturday")
                        .italic()
                        .foregroundColor(Color.white)
                    Text("11:00AM - 8:00PM")
                        .bold()
                        .foregroundColor(Color.white)
                    Text("Sunday")
                        .italic()
                        .foregroundColor(Color.white)
                    Text("Closed")
                        .bold()
                        .foregroundColor(Color.white)
                    
                        
                }
               
                
                    
                    
                    
                    
            }
        }
        .frame(height:200)
        .padding()
        
        
        
    }
        
}

struct MoesInfo: View {
    var image: String
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.cyan)
                .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.theme.Stroke, lineWidth: 5)
                        )
            HStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 100,height:110)
                    
                    
                
                VStack {
                    Text("Fall Hours")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .bold()
                    Divider()
                       .frame(width:200)
                    Group {
                        Text("Monday - Thursday")
                            .italic()
                            .foregroundColor(Color.white)
                        Text("10:30AM - 4:00PM")
                            .bold()
                            .foregroundColor(Color.white)
                        Text("Friday")
                            .italic()
                            .foregroundColor(Color.white)
                        Text("10:30AM - 2:00PM")
                            .bold()
                            .foregroundColor(Color.white)
                    }
                    .font(.system(size: 13))
                    Group {
                        
                        
                        Text("Saturday")
                            .italic()
                            .foregroundColor(Color.white)
                        Text("Closed")
                            .bold()
                            .foregroundColor(Color.white)
                        Text("Sunday")
                            .italic()
                            .foregroundColor(Color.white)
                        Text("11:00AM - 8:00PM")
                            .bold()
                            .foregroundColor(Color.white)
                    }
                    .font(.system(size: 13))
                        
                }
               
                
                    
                    
                    
                    
            }
        }
        .frame(height:200)
        .padding()
        
        
        
    }
        
}

struct PodInfo: View {
    var image: String
   
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.green)
                .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.theme.Stroke, lineWidth: 5)
                        )
            HStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 120,height:100)
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    
                VStack {
                    Text("Fall Hours")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .bold()
                    Divider()
                       .frame(width:200)
                    Text("Monday - Thursday")
                        .italic()
                        .foregroundColor(Color.white)
                    Text("8:00AM - 4:30PM")
                        .bold()
                        .foregroundColor(Color.white)
                    Text("Friday")
                        .italic()
                        .foregroundColor(Color.white)
                    Text("8:00AM - 2:00PM")
                        .bold()
                        .foregroundColor(Color.white)
                    Text("Saturday - Sunday")
                        .italic()
                        .foregroundColor(Color.white)
                    Text("Closed")
                        .bold()
                        .foregroundColor(Color.white)
                    
                    
                    
                        
                }
               
                
                    
                    
                    
                    
            }
        }
        .frame(height:200)
        .padding()
        
        
        
    }

}

struct RRInfo: View {
    
    var image: String
    
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.white)
                .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.theme.Stroke, lineWidth: 5)
                        )
            HStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 120,height:100)
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    
                VStack {
                    Text("Fall Hours")
                        .foregroundColor(Color.black)
                        .font(.title)
                        .bold()
                    Divider()
                       .frame(width:200)
                    Text("Monday - Friday")
                        .italic()
                        .foregroundColor(Color.black)
                    Text("11:00AM - 7:00PM")
                        .bold()
                        .foregroundColor(Color.black)
                    Text("Saturday - Sunday")
                        .italic()
                        .foregroundColor(Color.black)
                    Text("Closed")
                        .bold()
                        .foregroundColor(Color.black)
                    
                    
                    
                    
                    
                    
                        
                }
               
                
                    
                    
                    
                    
            }
        }
        .frame(height:200)
        .padding()
        
        
        
    }
     
}


struct PandaInfo: View {
    var image: String
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.theme.PandaInfographic)
                .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.theme.Stroke, lineWidth: 5)
                        )
            HStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 120,height:100)
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    
                VStack {
                    Text("Fall Hours")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .bold()
                    Divider()
                       .frame(width:200)
                    Text("Monday - Thursday")
                        .italic()
                        .foregroundColor(Color.white)
                    Text("10:30AM - 5:00PM")
                        .bold()
                        .foregroundColor(Color.white)
                    Text("Friday")
                        .italic()
                        .foregroundColor(Color.white)
                    Text("10:30AM - 4:00PM")
                        .bold()
                        .foregroundColor(Color.white)
                    Text("Saturday - Sunday")
                        .italic()
                        .foregroundColor(Color.white)
                    Text("Closed")
                        .bold()
                        .foregroundColor(Color.white)
                        
                    
                    
                    
                    
                    
                        
                }
               
                
                    
                    
                    
                    
            }
        }
        .frame(height:200)
        .padding()
        
        
        
    }
      
}

struct StarbucksInfo: View {
    var image: String
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.theme.StarbucksInfographic)
                .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.theme.Stroke, lineWidth: 5)
                        )
            HStack {
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 120,height:100)
                    .offset(x:30)
                    .overlay {
                        Circle().stroke(Color.white, lineWidth: 4)
                            .offset(x:30)
                            
                    }
                
                    
                VStack {
                    Text("Fall Hours")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .bold()
                    
                    Divider()
                    Group {
                        Text("Monday - Thursday")
                            .italic()
                            .foregroundColor(Color.white)
                        Text("7:30AM - 10:00PM")
                            .bold()
                            .foregroundColor(Color.white)
                        Text("Friday")
                            .italic()
                            .foregroundColor(Color.white)
                        Text("7:30AM - 5:00PM")
                            .bold()
                            .foregroundColor(Color.white)
                    }
                    .font(.system(size: 12))
                    Group {
                        
                        
                        Text("Saturday")
                            .italic()
                            .foregroundColor(Color.white)
                        Text("12:00PM - 4:00PM")
                            .bold()
                            .foregroundColor(Color.white)
                        Text("Sunday")
                            .italic()
                            .foregroundColor(Color.white)
                        Text("2:00PM - 10:00PM")
                            .bold()
                            .foregroundColor(Color.white)
                    }
                    .font(.system(size: 12))
                    
                   
                    
                    
                    
                    
                        
                }
                .padding()
               
                
                    
                    
                    
                    
            }
        }
        .frame(height:200)
        .padding()
        
        
        
    }
        
}


struct Infographics_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
