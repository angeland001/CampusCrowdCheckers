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
            
            ScrollView {
                
                ForEach(school.schoolVenues) { venue in
                    Button {
                        
                    } label: {
                        Infographics(venue: venue)
                            .padding()
                    }
                    .buttonStyle(.plain)

                    
                    
                }
            }
            
            
            
            
            
            
            
            
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
            Color.white
            
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







