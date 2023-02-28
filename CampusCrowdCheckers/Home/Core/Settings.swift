//
//  Settings.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/18/22.
//

import SwiftUI
import Foundation
import SwiftClockUI

////this uniquely identifies each link. Basically make it static
enum Constants{
    static let instagramOfCreator = "https://www.instagram.com/danielduggin"
    static let emailOfCompany = "mailto:campuscrowdcheck@gmail.com"
    static let instagramOfDeveloper = "https://www.instagram.com/a_ndres.a"
    static let emailOfDeveloper = "mailto:rvj412@mocs.utc.edu"

}


struct Settings: View {
    var body: some View {
        ZStack {
            Color("Jenni")
                .ignoresSafeArea()
        VStack {
            ZStack {
                
                
                Wave(yOffset: -0.75)
                    .fill(Color("WaveColor"))
                //.fill(Color.theme.text)
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
                DevelopersSection
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
                Image("leaf")
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
        .foregroundColor(Color.white)
        .listRowBackground(Color("WaveColor"))


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
            .foregroundColor(Color.black)
            Link(destination: URL(string: Constants.instagramOfDeveloper)!,
                                        label: {
                HStack {
                    Image("Instagram")
                        .resizable()
                        .frame(width: 25,height:25)
                        .foregroundColor(Color.black)
                    Text("Instagram")
                }
                .offset(x:4)

                                })
            .foregroundColor(Color.black)



            Link(destination: URL(string: Constants.emailOfDeveloper)!,
                                        label: {
                                            Label("Email", systemImage: "envelope.open.fill")
                                })
            .foregroundColor(Color.black)


        }
        .foregroundColor(Color.white)
        .listRowBackground(Color("WaveColor"))
        
    }


    private var TermsSection: some View {
        Section(header: Text("Application")){
            Link("Terms of Service", destination: URL(string: Constants.emailOfCompany)!)
                .foregroundColor(Color.black)
            Link("Privacy Policy", destination: URL(string: Constants.emailOfCompany)!)
                .foregroundColor(Color.black)
            Link("Company Website", destination: URL(string: Constants.emailOfCompany)!)
                .foregroundColor(Color.black)
            }
        .foregroundColor(Color.white)
        .listRowBackground(Color("WaveColor"))
        


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





struct Settings_Previews: PreviewProvider {

    static var previews: some View {
            Settings()

    }
}








////this uniquely identifies each link. Basically make it static

//struct Settings: View {
//    //we are gonna have to play with the list style to override the colors but using the list style below will change the background color but will mess up the design of each block
//    var body: some View {
//        NavigationView {
//
//            ZStack {
//                Color("Jenni")
//                VStack {
//                    List {
//
//                        CreatorsSection
//                        DevelopersSection
//                        TermsSection
//                    }
//                    //.listStyle(.)
//
//                }
//                .background(Color("Jenni"))
//                .navigationTitle("Settings")
//                .foregroundColor(Color.black)
//                .font(.headline)
//            }
//
//
//        }
//
//    }
//}
//struct Settings_Previews: PreviewProvider {
//
//    static var previews: some View {
//            Settings()
//
//    }
//}
//
//extension Settings {
//    private var CreatorsSection: some View {
//        Section(header: Text("Creator")){
//            VStack(alignment: .leading) {
//                Image("leaf")
//                    .resizable()
//                    .frame(width: 100,height: 100)
//                    .clipShape(Circle())
//                Text("Daniel Duggin")
//                    .fontWeight(.heavy)
//                Text("Creator of Campus Crowd Checkers")
//                    .font(.callout)
//                    .fontWeight(.medium)
//                Text("Web Designer for UTC")
//                    .font(.callout)
//                    .fontWeight(.medium)
//
//            }
//            .foregroundColor(Color.black)
//
//            Link(destination: URL(string: Constants.instagramOfCreator)!,
//                                        label: {
//                HStack {
//                    Image("Instagram")
//                        .resizable()
//                        .frame(width: 25,height:25)
//
//                    Text("Instagram")
//                        .foregroundColor(Color.black)
//                }
//
//                .offset(x:4)
//
//                                })
//            .foregroundColor(Color.black)
////            .foregroundColor(Color.theme.text)
//
//            Link(destination: URL(string: Constants.emailOfCompany)!,
//                                        label: {
//                                            Label("Email", systemImage: "envelope.open.fill")
//                                })
//            .foregroundColor(Color.black)
////            .foregroundColor(Color.theme.text)
//
//
//        }
//
//        //.listRowBackground(Color("Jenni"))
//
//
//    }
//
//    private var DevelopersSection: some View {
//        Section(header: Text("Developer")){
//            VStack(alignment: .leading) {
//                Image("leaf")
//
//                    .resizable()
//                    .frame(width: 100,height: 100)
//                    .clipShape(Circle())
//
//                Text("Andres Angel")
//                    .fontWeight(.heavy)
//                Text("Lead Developer")
//                    .font(.callout)
//                    .fontWeight(.medium)
//                Text("Web Designer for UTC")
//                    .font(.callout)
//                    .fontWeight(.medium)
//
//            }
//            .foregroundColor(Color.black)
//            Link(destination: URL(string: Constants.instagramOfDeveloper)!,
//                                        label: {
//                HStack {
//                    Image("Instagram")
//                        .resizable()
//                        .frame(width: 25,height:25)
//                        .foregroundColor(Color.black)
//                    Text("Instagram")
//                }
//                .offset(x:4)
//
//                                })
//            .foregroundColor(Color.black)
////            .foregroundColor(Color.theme.text)
//
//
//            Link(destination: URL(string: Constants.emailOfDeveloper)!,
//                                        label: {
//                                            Label("Email", systemImage: "envelope.open.fill")
//                                })
//            .foregroundColor(Color.black)
////            .foregroundColor(Color.theme.text)
//
//        }
//        //.listRowBackground(Color("WaveColor"))
//    }
//
//
//    private var TermsSection: some View {
//        Section(header: Text("Application")){
//            Link("Terms of Service", destination: URL(string: Constants.emailOfCompany)!)
//            Link("Privacy Policy", destination: URL(string: Constants.emailOfCompany)!)
//            Link("Company Website", destination: URL(string: Constants.emailOfCompany)!)
//            }
//        .foregroundColor(Color.black)
////        .foregroundColor(Color.theme.text)
//        //.listRowBackground(Color("WaveColor"))
//
//        }
//    }
//
//struct StylePicker: View {
//    @Binding var clockStyle: ClockStyle
//
//    var body: some View {
//        Picker("Style", selection: $clockStyle) {
//            ForEach(ClockStyle.allCases) { style in
//                Text(style.description).tag(style)
//            }
//        }
//        .pickerStyle(SegmentedPickerStyle())
//    }
//}
//
//
//
