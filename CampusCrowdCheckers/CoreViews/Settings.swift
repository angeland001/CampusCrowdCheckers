//
//  Settings.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/18/22.
//

import SwiftUI

import Foundation
import SwiftClockUI

//this uniquely identifies each link. Basically make it static
enum Constants{
    static let instagramOfCreator = "https://www.instagram.com/danielduggin"
    static let emailOfCompany = "mailto:campuscrowdcheck@gmail.com"
    static let instagramOfDeveloper = "https://www.instagram.com/a_ndres.a"
    static let emailOfDeveloper = "mailto:rvj412@mocs.utc.edu"
    
}
struct Settings: View {
    @State var clockStyle: ClockStyle
    var body: some View {
        NavigationView {
            
            List {
                DisplayandCustomizationSection
                CreatorsSection
                DevelopersSection
                TermsSection
                
                
            }
            .font(.headline)
            .navigationTitle("Settings")
            
        }
        
    }
}
struct Settings_Previews: PreviewProvider {
    
    static var previews: some View {
        Settings(clockStyle: .steampunk)
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
            Link(destination: URL(string: Constants.instagramOfCreator)!,
                                        label: {
                HStack {
                    Image("Instagram")
                        .resizable()
                        .frame(width: 25,height:25)
                        
                    Text("Instagram")
                }
                .offset(x:4)
                
                                })
            .foregroundColor(Color.theme.text)
          
            Link(destination: URL(string: Constants.emailOfCompany)!,
                                        label: {
                                            Label("Email", systemImage: "envelope.open.fill")
                                })
            .foregroundColor(Color.theme.text)
                                
            
        }
    }
    
    private var DevelopersSection: some View {
        Section(header: Text("Developer")){
            VStack(alignment: .leading) {
                Image("leaf")
                    
                    .resizable()
                    .frame(width: 100,height: 100)
                    .clipShape(Circle())
                    
                Text("Andres Angel")
                    .fontWeight(.heavy)
                Text("Lead Developer")
                    .font(.callout)
                    .fontWeight(.medium)
                Text("Web Designer for UTC")
                    .font(.callout)
                    .fontWeight(.medium)
                        
            }
            Link(destination: URL(string: Constants.instagramOfDeveloper)!,
                                        label: {
                HStack {
                    Image("Instagram")
                        .resizable()
                        .frame(width: 25,height:25)
                    Text("Instagram")
                }
                .offset(x:4)
                
                                })
            .foregroundColor(Color.theme.text)
                               
            
            Link(destination: URL(string: Constants.emailOfDeveloper)!,
                                        label: {
                                            Label("Email", systemImage: "envelope.open.fill")
                                })
            .foregroundColor(Color.theme.text)
                                
        }
    }
                 
    @ViewBuilder
    private var DisplayandCustomizationSection: some View {
        
        
        Section(header: Text("Display"),
                    footer: Text("System settings will override dark mode if toggled on. This will use the preferred device theme.")){
            Toggle(isOn: .constant(false),
                    label: {
                        Text("Dark Mode")
                        })
                            
            Toggle(isOn: .constant(false),
                    label: {
                        Text("Use System Settings")
                        })
            }
        Section(header: Text("Customizer"), footer: Text("Change Appearance of Clock")) {
            VStack {
                StylePicker(clockStyle: $clockStyle)
            }
        }
        
                        
                    
                       
    }
    private var TermsSection: some View {
        Section(header: Text("Application")){
            Link("Terms of Service", destination: URL(string: Constants.emailOfCompany)!)
            Link("Privacy Policy", destination: URL(string: Constants.emailOfCompany)!)
            Link("Company Website", destination: URL(string: Constants.emailOfCompany)!)
            }
        .foregroundColor(Color.theme.text)
            
        }
    }

struct StylePicker: View {
    @Binding var clockStyle: ClockStyle

    var body: some View {
        Picker("Style", selection: $clockStyle) {
            ForEach(ClockStyle.allCases) { style in
                Text(style.description).tag(style)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}
    

