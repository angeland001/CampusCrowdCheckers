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
    
    var body: some View {
        ZStack {
            Color.theme.Background
                .ignoresSafeArea()
            
            
            
            
            //content layer
            
            VStack {
                ZStack(alignment: .top) {
                    Wave(yOffset: 0.65)
                        .fill(Color[school.colors[1]])
                        .frame(height: 150)
                        .shadow(radius: 40)
                        .ignoresSafeArea()
                    Wave(yOffset: -0.55)
                        .fill(Color[school.colors[0]])
                        .frame(height: 150)
                        .shadow(radius: 40)
                        .ignoresSafeArea()
                }
                Spacer()
            }
        }.navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                Button(action: { self.presentationMode.wrappedValue.dismiss()}) {
                    Image(systemName: "arrow.backward")
                    
                })
            
    }
}



struct SchoolInformationView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolInformationView(school: dev.school)
    }
}
