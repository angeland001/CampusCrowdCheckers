//
//  Infographics.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/9/22.
//

import SwiftUI

struct Infographics: View {
    
    
    var body: some View {
        TabView {
            //insert infographics sequentially
            ChickFilAInfo()
            MoesInfo()
            PodInfo()
            PandaInfo()
            RRInfo()
            
        }
        
        .frame(height:340)
        .tabViewStyle(PageTabViewStyle())
    }
        
        
}


struct ChickFilAInfo: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.red)
                
                
            
            HStack {
                Image("chickfilalogo")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 105,height:105)
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
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.blue)
            HStack {
                Image("MoesLogo")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 110,height:110)

                    
                    
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
                    Text("10:30AM - 4:00PM")
                        .bold()
                        .foregroundColor(Color.white)
                    Text("Friday")
                        .italic()
                        .foregroundColor(Color.white)
                    Text("10:30AM - 2:00PM")
                        .bold()
                        .foregroundColor(Color.white)
                    Text("Saturday")
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

struct PodInfo: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.green)
            HStack {
                Image("podlogo")
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
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.white)
            HStack {
                Image("RRLogo")
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
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(Color.theme.PandaInfographic)
            HStack {
                Image("PandaLogo")
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


struct Infographics_Previews: PreviewProvider {
    static var previews: some View {
        Infographics()
    }
}
