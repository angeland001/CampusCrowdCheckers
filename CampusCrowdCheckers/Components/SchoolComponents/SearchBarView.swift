//
//  SearchBarView.swift
//  CampusCrowdCheckers
//
//  
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.black)
            
            TextField("Search by School Name or City...", text: $searchText)
                .foregroundColor(Color.black)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x:10)
                        .foregroundColor(Color.theme.Stroke)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        }
                    ,alignment: .trailing
                    
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.secondarySystemBackground))
                .shadow(color: Color.white.opacity(0.25),
                        radius: 20, x:10, y:10)
        )
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchText: .constant(""))
    }
}


//    .padding()
//    .background(Color(UIColor.secondarySystemBackground))
