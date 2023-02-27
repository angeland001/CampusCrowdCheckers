//
//  UniversityRowView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/20/22.
//

import SwiftUI

struct UniversityRowView: View {
    
    let school: University
    let image: String
    
    
    
    var body: some View {
        HStack(spacing: 0) {
            Text("\(school.id)")
                .opacity(0.7)
                
            
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 50,height:40)
            Text(school.name)
                .font(.headline)
                .padding(.leading,6)
                .foregroundColor(Color.white)
            
            Spacer()
            Text(school.city)
                .font(.footnote)
                .foregroundColor(Color.white)
        }
        .padding()
        
        }
}

struct UniversityRowView_Previews: PreviewProvider {
    static var previews: some View {
        UniversityRowView(school: dev.school, image: "The University of Tennessee at Chattanooga")
    }
}
