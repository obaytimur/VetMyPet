//
//  DetailEditView.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 27/01/2024.
//

import SwiftUI

struct DetailEditView: View {
    
    @Binding var pet: Pet
    @State var sexOfPet: Sex = .notMentioned
    @State var typeOfPet: AnimalType = .notMentioned
    
    var body: some View {
        Form {
            Section(header: Text("Pet Info")) {
                HStack{
                    Text("Pet Name:")
                    Spacer()
                    TextField("Eg. Duman", text: $pet.name)
                        .multilineTextAlignment(.trailing)
                }
                DatePicker(
                    "Birthday:",
                    selection: $pet.birthday,
                    displayedComponents: [.date]
                    )
                Picker("Sex",selection: $pet.sex){
                    ForEach(Sex.allCases, id: \.self) {sex in
                        Text(String(describing: sex))
                    }
                }
                Picker("Animal Type", selection: $pet.animalType){
                    ForEach(AnimalType.allCases, id: \.self) { type in
                        Text(String(describing: type))
                    }
                }
                if pet.animalType != .notMentioned {
                    let breedPicker = getBreedArray(animalType: pet.animalType)
                    Picker("Breed", selection: $pet.breed){
                        ForEach(breedPicker.indices, id: \.self){ index in
                            Text("\(breedPicker[index])")
                        }
                    }
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView(pet: .constant(VariableConstants.ExPet))
    }
}

func getBreedArray(animalType: AnimalType) -> [String] {
    switch animalType{
    case AnimalType.notMentioned: return [""]
    case AnimalType.cat: return Breeds.Cats
    case AnimalType.dog: return Breeds.Dogs
    }
    
}
