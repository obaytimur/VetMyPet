//
//  PetsView.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import SwiftUI

struct PetsView: View {
    
    var pets: [Pet]
    
    var body: some View {
        NavigationStack{
            VStack {
                listView
            }
            .navigationTitle("Pets")
        }
    }
}

struct PetsView_Preview: PreviewProvider {
    static var previews: some View {
        PetsView(pets: VariableConstants.PetArray)
    }
}

extension PetsView {     private var listView: some View {
        VStack {
            ForEach(VariableConstants.PetArray) { pet in
                HStack {
                    PetInfoLong (pet: pet)
                }
            }
            Spacer()
        }
    }
}
