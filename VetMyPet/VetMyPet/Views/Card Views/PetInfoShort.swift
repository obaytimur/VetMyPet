//
//  PetInfoShort.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 17/01/2024.
//

import SwiftUI

struct PetInfoShort: View {
    
    let pet: Pet
    
    var body: some View {
        HStack{
            cardViewShort
        }.PetInfoCardShortCard()
    }
}

struct PetInfoShort_Preview: PreviewProvider {
    static var previews: some View {
        PetInfoShort(pet: VariableConstants.ExPet)
    }
}

extension PetInfoShort {
    private var cardViewShort: some View {
        HStack{
            Image(pet.name)
                .clipShape(Circle())
                .padding(.leading)
            VStack(alignment: .leading) {
                Text(pet.name)
                    .font(.system(size: 24))
                Text(pet.age[0] != 0 ? "\(pet.age[0]) years and \(pet.age[1]%12) months old" : "\(pet.age[1]%12) months old")
                    .font(.system(size: 16))
                    .padding(.top, -6)
            }
            .padding(.leading, 10)
            Spacer()
            Image("downArrowIcon")
                .padding(.trailing)
        }
    }
}
