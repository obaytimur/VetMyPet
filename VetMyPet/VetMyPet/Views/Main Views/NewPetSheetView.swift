//
//  NewPetSheetView.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 27/01/2024.
//

import SwiftUI

struct NewPetSheetView: View {
    
    @State private var newPet = Pet.emptyPet
    @Binding var pets: [Pet]
    @Binding var isPresentingNewPetView: Bool
    
    var body: some View {
        NavigationStack {
            DetailEditView(pet: $newPet)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Dismiss") {
                        isPresentingNewPetView = false
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add") {
                        pets.append(newPet)
                        isPresentingNewPetView = false
                    }
                }
            }
        }
    }
}

struct NewPetSheetView_Previews: PreviewProvider {
    static var previews: some View{
        NewPetSheetView(pets: .constant(VariableConstants.PetArray), isPresentingNewPetView: .constant(true))
    }
}
