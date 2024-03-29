//
//  SchoolInformationView.swift
//  CampusCrowdCheckers
//
//  
//

import SwiftUI
    
struct SchoolInformationView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    let school: University
    @State var PageIndex: Int = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: .init(colors: [Color[school.colors[0]],Color.white]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
                    .navigationBarBackButtonHidden(true)
                            .navigationBarItems(leading:
                                Button(action: { self.presentationMode.wrappedValue.dismiss()}) {
                                    Image(systemName: "arrow.backward")
                                    .foregroundColor(Color.white)
            
                                })
            
                            //.offset(y:-350)
            VStack {
                ZStack(alignment: .top) {
                    Rectangle()
                        .ignoresSafeArea()
                        .foregroundColor(Color.white)
                        .frame(width: .infinity, height: 60)
                    
                    HStack(alignment: .center){
                        
                            
                        Text(school.name)
                            .fontWeight(.bold)
                            .font(.title)
                            
                        
                    }
                    //.offset(y:-20)
                    
                }
                
                
                ScrollView {
                    ForEach(school.schoolVenues) { venue in
                        NavigationLink(destination: VenueCrowdView(school: school, venue: venue)) {
                            
                            Infographics(venue: venue)
                            
                        }
                        
                        
                        
                    }
                }
                
                
                //.ignoresSafeArea()
                
            }
        }
        //.background(Color("SchoolColor"))
        
        
    }
}
            





struct SchoolInformationView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolInformationView(school: dev.school)
    }
}








//ZStack {
//    LinearGradient(gradient: .init(colors: [Color[school.colors[0]],Color.white]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
//    ScrollView {
//
//
//        ForEach(school.schoolVenues) { venue in
//            Button {
//
//            } label: {
//                Infographics(venue: venue)
//                    .padding()
//            }
//            .buttonStyle(.plain)
//
//
//
//        }
//
//
        
        
        
        
        
        
//    }
//}
