//
//  LocationMapAnnotationView.swift
//  CampusCrowdCheckers
//
//  
//

import Foundation
import SwiftUI

struct LocationMapAnnotationView: View {
    

    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "checkmark.seal.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
            

            }
    }
}

struct LocationMapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapAnnotationView()
    }
}
