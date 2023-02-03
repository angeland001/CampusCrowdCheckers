//
//  BlankView.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 2/3/23.
//

import SwiftUI
import Firebase

struct BlankView: View {
    
    @AppStorage("log_status") var log_Status = false
    
    var body: some View {
        
        NavigationView{
            
            VStack(spacing: 20){
                Text("Logged In Successfully Using Apple Login")
                
                Button(action: {
                    // Logging Out User...
                    DispatchQueue.global(qos: .background).async {
                        
                        try? Auth.auth().signOut()
                    }
                    
                    // Setting Back View To Login...
                    withAnimation(.easeInOut){
                        log_Status = false
                    }
                    
                }, label: {
                    
                    Text("Log Out")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.vertical,12)
                        .frame(width: UIScreen.main.bounds.width / 2)
                        .background(Color.pink)
                        .clipShape(Capsule())
                })
            }
            
        }
    }
}
struct BlankView_Previews: PreviewProvider {
    static var previews: some View {
        BlankView()
    }
}

