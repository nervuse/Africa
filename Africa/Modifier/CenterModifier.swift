//
//  CenterModifier.swift
//  Africa
//
//  Created by e.mogilevich on 7/5/22.
//

import Foundation
import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
