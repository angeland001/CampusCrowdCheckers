//
//  UniversityRowView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/20/22.
//

import SwiftUI

struct UniversityRowView: View {
    
    let school: University
    
    @StateObject var vm = HomeViewModel()
    var body: some View {
        HStack(spacing: 0) {
            Text("\(school.id)")
                .font(.caption)
                .foregroundColor(Color.theme.text)
                .frame(minWidth: 30)
                .padding(.trailing)
            Circle()
                .frame(width: 30,height: 30)
            Text(school.name)
                .font(.headline)
                .padding(.leading,6)
                .foregroundColor(Color.theme.text)
            Spacer()
            Text(school.city)
        }
        .padding()
        
        }
}

struct UniversityRowView_Previews: PreviewProvider {
    static var previews: some View {
        UniversityRowView(school: dev.school)
    }
}
