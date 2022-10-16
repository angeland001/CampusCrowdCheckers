//
//  LoginScreen.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/15/22.
//

import SwiftUI

struct LoginScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.gradient
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(Color.theme.lessopacitycircle)
                    .offset(y:180)
                Circle()
                    .scale(1.5)
                    .foregroundColor(Color.theme.circle)
                    .offset(y:280)
                Image(systemName: "figure.walk")
                    .resizable()
                    .frame(width: 50,height: 70)
                    .offset(x:-50,y:80)
                Circle()
                    .scale(1.3)
                    .foregroundColor(Color.gray)
                    .offset(y:380)
                VStack() {
                    Image("Pop-Globe")
                        .resizable()
                        .frame(width:100,height:100)
                        
                        
                    Text("CrowdCheckers")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color.theme.secondaryText)
                    
                        
                        
                    
                    
                    
                        
                    
                    
                }
                .offset(y:-270)
                
                
                
                
       
                
                
                    
                                                        
                                        
                                                            
                                                            
                        
                        
                        
                        
                        
                        
                    
                }
                    
                
            }
                
        }
    }


struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
