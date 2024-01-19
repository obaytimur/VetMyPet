//
//  PetInfoLong.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import SwiftUI

struct PetInfoLong: View {
    
    let pet: Pet
    
    var body: some View {
        ZStack {
            cardViewLong
        }.PetInfoCardLongCard()
    }
}

struct PetInfoLong_Preview: PreviewProvider {
    static var previews: some View {
        PetInfoLong(pet: VariableConstants.ExPet)
    }
}

extension PetInfoLong {
    private var cardViewLong: some View {
        VStack(alignment: .leading) {
            PetInfoShort(pet: pet)
                .cornerFlatter()
                .frame(maxWidth: ViewConstants.petInfoShortWidth, maxHeight: ViewConstants.petInfoShortHeight)
            VStack(alignment: .leading) {
                Text("Information")
                    .simpleTitle()
                Text("Birthday")
                    .subTitle()
                    .padding(.top, -1)
                Text("\(pet.birthday.formatted())")
                    .infoText()
                    .padding(.top, -4)
            }
            .padding(.top, 10)
            .padding(.leading, 20)
            Spacer()
        }
    }
}
