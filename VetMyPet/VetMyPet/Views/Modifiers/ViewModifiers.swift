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
            .frame(maxWidth: ViewConstants.petInfoShortWidth, maxHeight: ViewConstants.petInfoShortHeight)
            .background(Color(hex: 0xEBF2FD))

    }
}

struct PetInfoCardLongModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: ViewConstants.petInfoLongWidth)
            .background(RoundedRectangle(cornerRadius: 15).fill(Color(hex: 0xFFFFFF)))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/ .opacity(0.4), radius: 1)
        

    }
}

struct PetHealthCardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: ViewConstants.petHealthInfoWidth)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(color: .black.opacity(0.18), radius: 3.55)
    }
}

extension View{
    func PetInfoCardShortCard() -> some View {
        modifier(PetInfoCardShortModifier())
    }
    func PetInfoCardLongCard() -> some View {
        modifier(PetInfoCardLongModifier())
    }
    func PetHealthCard() -> some View {
        modifier(PetHealthCardModifier())
    }
}

