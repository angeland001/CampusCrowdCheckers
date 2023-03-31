//
//  AnimatedTabBar.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/7/22.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case message = "message"
    case takeout = "takeoutbag.and.cup.and.straw"
    case graduationcap = "graduationcap"
    case gear = "gearshape"
    
}

struct AnimatedTabBar: View {
    @Binding var currentTab: Tab
    @State var YOffset: CGFloat = 0
    var body: some View {
        GeometryReader{proxy in
            let width = proxy.size.width
            HStack(spacing:0) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Button {
                        withAnimation(.easeInOut(duration: 0.2)) {
                            currentTab = tab
                            YOffset = -80
                        }
                        withAnimation(.easeInOut(duration: 0.1).delay(0.1)) {
                            YOffset = 0
                        }
                    } label: {
                        Image(tab.rawValue)
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30,height:30)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(currentTab == tab ? Color.black : .gray)
                            .scaleEffect(currentTab == tab && YOffset != 0 ? 1.5 : 1)
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .background(alignment: .leading) {
                Circle()
                    .fill(Color("Jenni")).opacity(0.5)
                    .frame(width:25, height: 25)
                    .offset(x:33, y: YOffset)
                    .offset(x: indicatorOffset(width: width))
            }
            
        }
        .frame(height:30)
        .padding(.bottom,10)
        .padding([.horizontal,.top])
    }
    
    func indicatorOffset(width: CGFloat) -> CGFloat {
        let index = CGFloat(getIndex())
        if index == 0 {
            return 0
        }
        
        let buttonWidth = width / CGFloat(Tab.allCases.count)
        
        return index * buttonWidth
    }
    
    func getIndex() -> Int {
        switch currentTab {
            
        case .message:
            return 0
        case .takeout:
            return 1
        case .graduationcap:
            return 2
        case .gear:
            return 3
        }
    }
}

struct AnimatedTabBar_Previews: PreviewProvider {
   
    static var previews: some View {
        MainView()
    }
}


