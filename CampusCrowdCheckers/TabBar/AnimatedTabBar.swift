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
    case todo = "list.clipboard"
    case graduationcap = "graduationcap"
    case gear = "gearshape"
    
}

struct AnimatedTabBar: View {
    @State private var animate: Bool = false
        
    let size: CGFloat

    @Binding var currentTab: Tab
    @State var YOffset: CGFloat = 0
    var body: some View {
        GeometryReader{proxy in
            let width = proxy.size.width
            HStack(spacing:0) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Button {
                        currentTab = tab
                        
                    } label: {
                        ZStack {
                            ZStack(alignment: .bottom) {
                                    Rectangle()
                                        .frame(width: 1, height: size)
                                        .foregroundColor(.clear)
                                
                            HStack(alignment: .bottom, spacing: 10) {
                                ForEach(0..<5, id: \.self) { i in
                                    Rectangle()

                                        
                                        .frame(width: size / 4, height: currentTab == tab ? size * 1.1 : 0.5)

                                        .animation(.easeInOut.delay(0.1 * Double(i)), value: currentTab == tab ? true: false)
                                        .foregroundColor(Color.black)
                                        .opacity(1 - (0.15 * Double(i)))
                                        
                                                }
                                
                                
                                            }
                                        }
                                        .rotationEffect(.degrees(45))
                                        .mask {
                                            Image(systemName: "\(tab.rawValue).fill")
                                        .font(.system(size: size))
                                    }
                                        Image(systemName: tab.rawValue)
                                        .font(.system(size: size))
                                }

                    }
                    .buttonStyle(.plain)
                }
            }
            .frame(maxWidth: .infinity)
            
            
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
        case .todo:
            return 2
        case .graduationcap:
            return 3
        case .gear:
            return 4
        
        }
    }
}

struct AnimatedTabBar_Previews: PreviewProvider {
   
    static var previews: some View {
        MainView()
            .environmentObject(ListViewModel())
    }
}


