//
//  StyleModifiers.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import SwiftUI

extension Text {
    func simpleTitle() -> some View {
        self.frame(alignment: .trailing)
            .fontWeight(.semibold)
            .font(.system(size: 16))
    }
    func subTitle() -> some View {
        self.frame(alignment: .trailing)
            .fontWeight(.semibold)
            .font(.system(size: 14))
    }
    func infoText() -> some View {
        self.fontWeight(.regular)
            .font(.system(size: 14))
    }
}
