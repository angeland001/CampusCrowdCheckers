//
//  OnboardView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 2/26/23.
//

import SwiftUI

struct OnboardView: View {
    var image: String
    var title: String
    var description: String
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 100,height:100)
                .foregroundColor(.teal)
            
            Text(title)
                .font(.title).bold()
            
            Text(description)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
        }
        .padding(.horizontal,40)
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView(image: "Test", title: "Test", description: "Test")
    }
}
