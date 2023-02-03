//
//  LoginScreen.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 10/15/22.
//

import SwiftUI
import AuthenticationServices

import SwiftUI
import AuthenticationServices
struct LoginScreen: View {
    //@State var showingDetail = false
    @StateObject var loginData = LoginViewModel()
    var body: some View {
        ZStack{
            SignInWithAppleButton { (request) in
                
                // requesting paramertes from apple login...
                loginData.nonce = randomNonceString()
                request.requestedScopes = [.email,.fullName]
                request.nonce = sha256(loginData.nonce)
                
            } onCompletion: { (result) in
                
                // getting error or success...
                
                switch result{
                case .success(let user):
                    print("success")
                    // do Login With Firebase...
                    guard let credential = user.credential as? ASAuthorizationAppleIDCredential else{
                        print("error with firebase")
                        return
                    }
                    loginData.authenticate(credential: credential)
                case.failure(let error):
                    print(error.localizedDescription)
                }
            }
            .signInWithAppleButtonStyle(.white)
            .frame(height: 55)
            .clipShape(Capsule())
            .padding(.horizontal,40)
            .offset(y: 190)
        }
    }
}



    
struct LoginScreen_Previews: PreviewProvider {
        static var previews: some View {
            LoginScreen()
        }
    }

