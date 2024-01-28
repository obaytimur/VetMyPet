//
//  DetailEditView.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 27/01/2024.
//

import SwiftUI

struct DetailEditView: View {
    
    @Binding var pet: Pet
    @State private var newPetName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Pet Info")) {
                TextField("Name", text: $pet.name)
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView(pet: .constant(VariableConstants.ExPet))
    }
}
