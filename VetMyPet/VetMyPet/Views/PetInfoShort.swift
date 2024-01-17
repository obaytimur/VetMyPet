//
//  PetInfoShort.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 17/01/2024.
//

import SwiftUI

struct PetInfoShort: View {
    var body: some View {
        HStack{
            Image(systemName: "cat.fill")
            Spacer()
            VStack{
                Text("Lotus").bold()
                Text("4 year, 9 months old")
            }
            Spacer()
            Image(systemName: "arrow.down")
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}

#Preview {
    PetInfoShort()
}
