//
//  Settings.swift
//  CampusCrowdCheckers
//
//  
//

import SwiftUI
import Foundation
import SwiftClockUI

////this uniquely identifies each link. Basically make it static
enum Constants{
    static let instagramOfCreator = "https://www.instagram.com/campuscheckapp"
    static let emailOfCompany = "mailto:campuscrowdcheck@gmail.com"
    static let WebsiteOfCompany = "https://campuscheckapp.com/"
    
    
}


struct Settings: View {
    var body: some View {
        ZStack {
            Color("Jenni")
                .ignoresSafeArea()
        VStack {
            ZStack {
                Wave(yOffset: -0.55)
                    .fill(Color.white).opacity(0.5)
                    .frame(height: 150)
                    .shadow(radius: 4)
                    .ignoresSafeArea()
                Wave(yOffset: 0.55)
                    .fill(Color.white)
                    .frame(height: 150)
                    .shadow(radius: 4)
                    .ignoresSafeArea()
                HStack{
                    Text("Settings")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.black)
                    
                    
                }
                .offset(y:-40)
                
                
            }
            Spacer()
            
            List {
                CreatorsSection
                
                TermsSection
            }
            .listStyle(.plain)
        }
    }

        
    }
}


extension Settings {
    private var CreatorsSection: some View {
        Section(header: Text("Creator")){
            VStack(alignment: .leading) {
                Image("CreatorImage")
                    .resizable()
                    .frame(width: 100,height: 100)
                    .clipShape(Circle())
                Text("Daniel Duggin")
                    .fontWeight(.heavy)
                Text("Creator of Campus Crowd Checkers")
                    .font(.callout)
                    .fontWeight(.medium)
                Text("Web Designer for UTC")
                    .font(.callout)
                    .fontWeight(.medium)

            }
            .foregroundColor(Color.black)

            Link(destination: URL(string: Constants.instagramOfCreator)!,
                                        label: {
                HStack {
                    Image("Instagram")
                        .resizable()
                        .frame(width: 25,height:25)

                    Text("Instagram")
                        .foregroundColor(Color.black)
                }

                .offset(x:4)

                                })
            .foregroundColor(Color.black)

            Link(destination: URL(string: Constants.emailOfCompany)!,
                                        label: {
                                            Label("Email", systemImage: "envelope.open.fill")
                                })
            .foregroundColor(Color.black)



        }
        .listStyle(.sidebar)
        .foregroundColor(Color.white)
        .listRowBackground(Color.white)


    }

    


    private var TermsSection: some View {
        Section(header: Text("Application")){
            
            Link("Company Website", destination: URL(string: Constants.emailOfCompany)!)
                .foregroundColor(Color.black)
            }
        .foregroundColor(Color.white)
        .listRowBackground(Color.white)
        


        }
    }






struct Settings_Previews: PreviewProvider {

    static var previews: some View {
            Settings()

    }
}








