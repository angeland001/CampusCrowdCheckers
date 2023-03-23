//
//  AnimatedTabBar.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/7/22.
//

import SwiftUI

struct AnimatedTabBar: View {
    @Binding var selectedTab: String
    let size: CGFloat = 30
    
    //storing each tab midpoints to animate in future.
    
    @State var tabPoints : [CGFloat] = []
    
    var body: some View {
        HStack (spacing:50) {
            
            //Tab bar buttons
            
            TabBarButton(selectedTab: $selectedTab,size: size, image: "bubble.left",  color: .black)
            
            
            TabBarButton(selectedTab: $selectedTab,size: size,image: "takeoutbag.and.cup.and.straw", color: .black)
            
            
            TabBarButton(selectedTab: $selectedTab,size: size,image: "graduationcap", color: .black)
            
            TabBarButton(selectedTab: $selectedTab,size: size,image: "gearshape", color: .black)
            
            
        }
        .offset(y:10)
        .frame(width:400,height:20)
        .padding()
        .background(
            Color.white
        )
        //.cornerRadius(30)
        .padding(.horizontal)
    }
    
    
}


struct TabBarButton: View {
    
    
    @Binding var selectedTab: String
    
    @State private var animate: Bool = false
    
    let size: CGFloat
    var image: String
    let color: Color
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: size * 1.2, height: size * 1.2)
                .foregroundColor(.clear)
            Button {
                selectedTab = image
                animate.toggle()
            } label: {
                ZStack {
                    ZStack(alignment: .bottom) {
                        Rectangle()
                            .frame(width: 1, height: size)
                            .foregroundColor(.clear)
                        HStack(alignment: .bottom, spacing: 0) {
                            ForEach(0..<5, id: \.self) { i in
                                Rectangle()
                                    .frame(width: size / 4, height: animate ? size * 1.1 : 0.5)
                                    .animation(.easeInOut.delay(0.1 * Double(i)), value: animate)
                                    .foregroundColor(color)
                                    .opacity(1 - (0.15 * Double(i)))
                            }
                        }
                    }
                    .rotationEffect(.degrees(45))
                    .mask {
                        Image(systemName: "\(image).fill")
                            .font(.system(size: size))
                    }
                    Image(systemName: image)
                        .font(.system(size: size))
                }
            }
            .buttonStyle(.plain)
        }
    }
}




struct AnimatedTabBar_Previews: PreviewProvider {
   
    static var previews: some View {
        MainView()
    }
}


