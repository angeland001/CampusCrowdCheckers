//
//  SchoolInformationView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/24/22.
//

import SwiftUI
    
struct SchoolInformationView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    let school: University
    @State var PageIndex: Int = 0
    
    var body: some View {
        ZStack {
            BackGround
            TabView {
                ForEach(school.schoolVenues) { venue in
                    Infographics(venue: venue)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            
            
            
            
            
        }
    }
}
            





struct SchoolInformationView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolInformationView(school: dev.school)
    }
}

extension SchoolInformationView {
    private var BackGround: some View {
        ZStack {
            Color.theme.Background
            
            

        }
    
        .edgesIgnoringSafeArea(.all)
        
        .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading:
                    Button(action: { self.presentationMode.wrappedValue.dismiss()}) {
                        Image(systemName: "arrow.backward")
        
                    })
                .offset(y:-350)
       
            
    }
}







