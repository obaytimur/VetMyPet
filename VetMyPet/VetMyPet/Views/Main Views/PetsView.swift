//
//  PetsView.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import SwiftUI

struct PetsView: View {
    
    @Binding var pets: [Pet]
    @State var isNewPetSheet = false
    
    var body: some View {
        NavigationStack{
            VStack {
                listView
            }
            .navigationTitle("Pets")
            .toolbar {
                addPetButton
            }
            .sheet(isPresented: $isNewPetSheet) {
                NewPetSheetView(pets: $pets, isPresentingNewPetView: $isNewPetSheet)
            }
        }
    }
}

struct PetsView_Preview: PreviewProvider {
    static var previews: some View {
        PetsView(pets: .constant(VariableConstants.PetArray))
    }
}

extension PetsView {     
    private var listView: some View {
        VStack {
            ForEach($pets) { pet in
                HStack {
                    PetInfoLong (pet: pet)
                }
            }
            Spacer()
        }
    }
}

extension PetsView {
    private var addPetButton: some View {
        Button() {
            isNewPetSheet = true
        } label: {
            Image(systemName: "plus")
                .foregroundStyle(Color.black)
                .frame(width: 24, height: 24)
        }
    }
}
