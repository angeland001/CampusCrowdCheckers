//
//  IntroView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 2/3/23.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("log_status") var log_Status = false
    var body: some View {
        ZStack{
            HomeIntroView()
            
            if log_Status{
                MainView()
            }
            else{
               //LoginScreen()
            }
        }
        
       
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}

struct HomeIntroView: View {
    
    init() {
          UIPageControl.appearance().currentPageIndicatorTintColor = .white
          UIPageControl.appearance().pageIndicatorTintColor = UIColor.white.withAlphaComponent(0.2)
         }
       
       @State var selectedPage = 0
       @State private var showLogin = false
       @State private var offsetValue = false
   
    var body: some View {
        ZStack{
            PlayerView()
                .edgesIgnoringSafeArea(.all)
            

            RoundedRectangle(cornerRadius: 20)
                .frame(width: 500, height: 320)
                .foregroundColor(.black.opacity(0.1))
                .blur(radius: 2)
                .offset(x: 0, y: 320)
            
            
            
            ZStack{
                TabView(selection: $selectedPage)
                {
                ForEach(0..<testData.count){
                    index in CardView(card : testData[index]).tag(index)
                    }
                }
              .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            }.offset(x: 0, y: 30)
            .padding(30)
            
            /**/
            if (selectedPage == 3)
                        {
                
                ZStack{
                        LoginBoard()
                
                }.offset(x: 0, y: offsetValue ? 0 : 300)
                .onAppear {
                        withAnimation(Animation.default.repeatCount(1)) {
                          offsetValue.toggle()
                      }
                }
            }
       }
  }
}

