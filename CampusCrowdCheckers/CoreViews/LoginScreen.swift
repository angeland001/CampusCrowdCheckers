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
                Circle()
                    .scale(1.3)
                    .foregroundColor(Color.gray)
                    .offset(y:380)
                VStack(alignment: .trailing) {
                    Text("CrowdCheckers")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.theme.secondaryText)
                    Spacer()
                    
                    
                        
                    
                    
                }
                
                
                
                
       
                
                
                    
                                                        
                                        
                                                            
                                                            
                        
                        
                        
                        
                        
                        
                    
                }
                    
                
            }
                
        }
    }


struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
