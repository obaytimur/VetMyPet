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
    @State private var breed: Breed = .notMentioned
    
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
                    Picker("Breed", selection: $pet.breed){
                        ForEach(Breed.Cat.allCases, id: \.self) { breed in
                            Text(String(describing: breed))
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
