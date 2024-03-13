//
//  View+Extensions.swift
//  HatchWorks
//
//  Created by Roy Quesada on 13/3/24.
//

import Foundation
import SwiftUI

extension View{
    
    func embededNavigation()-> some View {
        return NavigationView{ self }
    }
}
