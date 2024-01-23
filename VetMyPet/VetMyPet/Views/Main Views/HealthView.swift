//
//  HealthView.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import SwiftUI

struct HealthView: View {
    
    @State var pets: [Pet]
    @State private var selection: Pet = VariableConstants.ExPet
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading) {
                HStack{
                    pickerView
                    Spacer()
                }
                PetHealthTrackersView(pet: $selection)
                    .padding()
                Spacer()
            }
            .navigationTitle("Health")
        }
    }
}

struct HealthView_Preview: PreviewProvider {
    static var previews: some View {
        HealthView(pets: VariableConstants.PetArray)
    }
}

extension HealthView {
    private var pickerView: some View {
        Picker("Pets", selection: $selection) {
            ForEach(self.pets) { pet in
                Text(pet.name)
                    .tag(pet as Pet?)
            }
        }
        .tint(Color(red: 0.11, green: 0.1, blue: 0.17))
        .background(RoundedRectangle(cornerRadius: 15).fill(Color(hex: 0xF2F2F2)))
        .padding(.leading)
    }
}
