//
//  ViewModifiers.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import SwiftUI

extension Color {
    init(hex: UInt) {
        self.init(
            red: Double((hex & 0xFF0000) >> 16) / 255.0,
            green: Double((hex & 0x00FF00) >> 8) / 255.0,
            blue: Double(hex & 0x0000FF) / 255.0
        )
    }
}

struct PetInfoCardShortModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: ViewConstants.petInfoShortWidth, height: ViewConstants.petInfoShortHeight)
            .background(RoundedRectangle(cornerRadius: 15).fill(Color(hex: 0xEBF2FD)))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(color: .black .opacity(0.3), radius: 5, x: 0, y: 1)
    }
}

extension View{
    func PetInfoCardShortCard() -> some View {
        modifier(PetInfoCardShortModifier())
    }
}

