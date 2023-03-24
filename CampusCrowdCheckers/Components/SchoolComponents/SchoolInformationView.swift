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
        
    
            
            
            
            VStack {
                ZStack {
                    HeaderWave(cornerRadius: 40, corners: [.bottomLeft, .bottomRight])
                        .foregroundColor(Color[school.colors[0]])
                        .frame(width: 450, height: 150)
                        .edgesIgnoringSafeArea(.top)
                    
                    HStack {
                        Image(school.name)
                            .resizable()
                            .frame(width: 80,height: 80)
                        Text(school.name)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                    }
                }
                
                
                
                
                ZStack {
                    LinearGradient(gradient: .init(colors: [Color[school.colors[0]],Color.white]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
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
}
            





struct SchoolInformationView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolInformationView(school: dev.school)
    }
}





//        .navigationBarBackButtonHidden(true)
//                .navigationBarItems(leading:
//                    Button(action: { self.presentationMode.wrappedValue.dismiss()}) {
//                        Image(systemName: "arrow.backward")
//
//                    })
//
//                .offset(y:-350)



