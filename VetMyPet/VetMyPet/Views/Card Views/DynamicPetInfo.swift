//
//  DynamicPetInfo.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 19/01/2024.
//

import SwiftUI

struct DynamicPetInfo: View {
    let pet: Pet
    @State private var isExtended = false
    
    var body: some View {
        VStack {
            if isExtended { PetInfoLong(pet: pet)}
            else { PetInfoShort(pet: pet)}
        }
        .onTapGesture {
            withAnimation(.easeIn(duration: 0.1)) {
                isExtended.toggle()
            }
        }
    }
}

struct DynamicPetInfo_Preview: PreviewProvider {
    static var previews: some View {
        DynamicPetInfo(pet: VariableConstants.ExPet)
    }
}
