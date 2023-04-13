//
//  SplashScreenView.swift
//  CampusCrowdCheckers
//
// 
//

import SwiftUI

struct SplashScreenView: View {
    
    @AppStorage("hasSeenWelcome") var hasSeenWelcome = false
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    
    var body: some View {
        if isActive{
            MainView()
        }
        else{
            ZStack {
                Color.black
                    .ignoresSafeArea()
                
                VStack{
                    VStack(spacing:5){
                        Image(systemName: "figure.2.and.child.holdinghands")
                            .font(.system(size: 80)).foregroundColor(.white)
                        Text("Crowd Check")
                            .font(Font.custom("Baskerville-Bold", size: 26))
                            .foregroundColor(Color.white)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)){
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        self.isActive = true
                    }
                    
                }
                
            }
        }
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
