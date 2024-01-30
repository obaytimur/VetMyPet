//
//  PetInfoLong.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import SwiftUI

struct PetInfoLong: View {
    
    @Binding var pet: Pet
    @State private var isExtended = false
    var body: some View {
        VStack {
            HStack{
                cardViewShort
                    .PetInfoCardShortCard()
            }
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.25)) {
                        isExtended.toggle()
                    }
                }
                if isExtended { cardViewLong }
        }.PetInfoCardLongCard()
    }
}

struct PetInfoLong_Preview: PreviewProvider {
    static var previews: some View {
        PetInfoLong(pet: .constant(VariableConstants.ExPet))
    }
}

extension PetInfoLong {
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
                .rotationEffect(.degrees(isExtended ? 180 : 0))
                .padding(.trailing)
        }
    }
}

extension PetInfoLong {
    private var cardViewLong: some View {
        VStack(alignment: .leading) {
            Text("Information")
                .simpleTitle()
            Text("Birthday")
                .subTitle()
                .padding(.top, -1)
            Text(pet.birthdayAsString)
                .infoText()
                .padding(.top, -4)
        }
        .padding(.top, 10)
        .padding(.leading, -150)
        .padding(.bottom, 20)
    }
}
