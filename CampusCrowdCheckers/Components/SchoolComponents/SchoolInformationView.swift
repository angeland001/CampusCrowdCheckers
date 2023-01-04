//
//  SchoolInformationView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/24/22.
//

import SwiftUI

struct SchoolInformationView: View {
    
    let school: University
    
    var body: some View {
        Text(school.name)
    }
}

struct SchoolInformationView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolInformationView(school: dev.school)
    }
}
