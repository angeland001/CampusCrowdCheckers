//
//  UIApplication.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 12/24/22.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
