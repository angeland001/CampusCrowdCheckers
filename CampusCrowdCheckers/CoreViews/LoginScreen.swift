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
                Color.theme.BackGradient
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(Color.theme.lessopacitycircle)
                    .offset(y:180)
                Circle()
                    .scale(1.5)
                    .foregroundColor(Color.theme.circle)
                    .offset(y:280)
                Image(systemName: "figure.run")
                    .resizable()
                    .frame(width: 30,height:40)
                    .offset(x:-70,y:120)
                    .foregroundColor(Color.theme.peopleImages)
                Circle()
                    .scale(1.3)
                    .foregroundColor(Color.gray)
                    .offset(y:380)
                VStack() {
                    Image("Pop-Globe")
                        .resizable()
                        .frame(width:100,height:100)
                        
                        
                    Text("CrowdCheckers")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color.theme.secondaryText)
                    
                    NavigationLink(destination: LoginView()) {
                        Text("Login")
                            .bold()
                            .frame(width:200,height:50)
                            .foregroundColor(Color.theme.secondaryText)
                            .background(Color.theme.GradientLoginButton)
                            .clipShape(Capsule())
                                    }
                    .offset(y:420)
                    NavigationLink(destination: SignUpView()) {
                        Text("Sign Up")
                            .bold()
                            .frame(width:200,height:50)
                            .foregroundColor(Color.theme.secondaryText)
                            .background(Color.theme.GradientSignUpButton)
                            .clipShape(Capsule())
                                    }
                    .offset(y:430)
                    
             
                }
                .offset(y:-240)
                
                
                
                
       
                
                
                    
                                                        
                                        
                                                            
                                                            
                        
                        
                        
                        
                        
                        
                    
                }
                    
                
            }
                
        }
    }


struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
