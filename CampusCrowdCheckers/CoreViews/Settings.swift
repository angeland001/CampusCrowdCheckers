//
//  Settings.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/18/22.
//

import SwiftUI
import Charts
struct item: Identifiable {
    var id = UUID()
    let type: String
    let value: Double
}

struct Settings: View {
    
    let items: [item] = [
        item(type:"Engineering", value: 90),
        item(type:"Design", value: 60),
        item(type:"Operations", value: 140),
        item(type:"Sales", value: 500),
        item(type:"Mgmt", value: 200)
        
        
    ]
    var body: some View {
        ZStack {
            Color.theme.Background.ignoresSafeArea()
            
            VStack {
                Chart(items) { item in
                    BarMark(
                        x: .value("Department", item.type),
                        y: .value("Profit",item.value)
                    )
                    
                    
                }
                .frame(height:200)
                .foregroundStyle(Color.red.gradient)
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
