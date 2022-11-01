//
//  AnimatedTabBar.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/7/22.
//

import SwiftUI

struct AnimatedTabBar: View {
    @Binding var selectedTab: String
    
    //storing each tab midpoints to animate in future.
    
    @State var tabPoints : [CGFloat] = []
    
    var body: some View {
        HStack (spacing: 0) {
            
            //Tab bar buttons
            TabBarButton(image: "bubble.left", selectedTab: $selectedTab, tabPoints: $tabPoints)
            
            TabBarButton(image: "house", selectedTab: $selectedTab, tabPoints: $tabPoints)
            
            TabBarButton(image: "questionmark.circle", selectedTab: $selectedTab, tabPoints: $tabPoints)
            
           
        }
        .padding()
        .background(
            Color.white
                .clipShape(TabCurve(tabPoint: getCurvePoint() - 15)))
        .overlay (
          Circle()
            .fill(Color.black)
            .frame(width:10,height:10)
            .offset(x:getCurvePoint() - 195)
          ,alignment: .bottom
        )
        .cornerRadius(30)
        .padding(.horizontal)
    }
    
    func getCurvePoint() -> CGFloat {
        //if tabpoint is empty...
        if tabPoints.isEmpty{
            return 10
        }
        else {
            switch selectedTab {
            case "bubble.left":
                return tabPoints[0]
            case "house":
                return tabPoints[1]
            case "questionmark.circle":
                return tabPoints[2]
            
            default:
                return tabPoints[3]
            }
        }
    }
}


struct TabBarButton: View {
    
    var image: String
    @Binding var selectedTab: String
    @Binding var tabPoints: [CGFloat]
    var body: some View {
        //mid point of each button for curve animation...
        GeometryReader{reader -> AnyView in
            
            //extracting midpoint and storing
            let midX = reader.frame(in:.global).midX
            
            DispatchQueue.main.async {
                
                //avoiding junk data
                if tabPoints.count <= 4 {
                    tabPoints.append(midX)
                }
            }
            
           return AnyView(
            Button(action: {
                //changing tab...
                //spring animation...
                withAnimation(.interactiveSpring(response: 0.6,dampingFraction: 0.5,blendDuration: 0.5)){
                    selectedTab = image
                }
            }, label: {
                
                
                //filling the color if its selected
                Image(systemName: "\(image)\(selectedTab == image ? ".fill" : "")")
                    .font(.system(size:25,weight:.semibold))
                    .foregroundColor(Color.black)
                    // Lifting View
                    //if its selected
                    .offset(y:selectedTab == image ? -10 : 0)
            })
            .frame(maxWidth:.infinity, maxHeight:.infinity)
           
           )
        }
        //maxHeight
        .frame(height:50)
    }
}




struct AnimatedTabBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

