//
//  PetHealthTrackersView.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 23/01/2024.
//

import SwiftUI

struct PetHealthTrackersView: View {
    
    @State private var isExtendedHealth = false
    @State private var isExtendedVaccine = false
    @State private var isExtendedVets = false

    
    @Binding var pet: Pet
    
    var body: some View {
        VStack{
            weightView
                .PetHealthCard()
            vaccineView
                .PetHealthCard()
            vetsView
                .PetHealthCard()
        }
    }
}

struct PetHealthTrackersView_Preview: PreviewProvider {
    static var previews: some View {
        PetHealthTrackersView(pet: .constant(VariableConstants.ExPet))
    }
}

extension PetHealthTrackersView {
    private var weightView: some View{
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 4){
                    Text("Weight")
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                        .kerning(0.15)
                        .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.13))
                    Text(pet.weight.isEmpty ? "\(pet.name) has no weight data" : String(pet.weight.last!))
                      .font(Font.custom("Plus Jakarta Sans", size: 14))
                      .kerning(0.25)
                      .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.13))
                }
                Spacer()
                Image("downArrowIcon")
                    .rotationEffect(Angle(degrees: isExtendedHealth ? 180 : 0))
            }
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation(.easeIn(duration: 0.25)) {
                    isExtendedHealth.toggle()
                }
            }
            .padding()
            if isExtendedHealth {
                VStack {
                    Text("Some Information")
                }
                .padding()
            }
        }
    }
}

extension PetHealthTrackersView {
    private var vaccineView: some View{
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 4){
                    Text("Vaccines")
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                        .kerning(0.15)
                        .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.13))
                    Text("aaaaaaa")
                      .font(Font.custom("Plus Jakarta Sans", size: 14))
                      .kerning(0.25)
                      .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.13))
                }
                Spacer()
                Image("downArrowIcon")
                    .rotationEffect(Angle(degrees: isExtendedVaccine ? 180 : 0))
            }
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation(.easeIn(duration: 0.25)) {
                    isExtendedVaccine.toggle()
                }
            }
            .padding()
            if isExtendedVaccine {
                VStack {
                    Text("Some Information")
                }
                .padding()
            }
        }
    }
}

extension PetHealthTrackersView {
    private var vetsView: some View{
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 4){
                    Text("Vet Visits")
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                        .kerning(0.15)
                        .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.13))
                    Text("Last visit: ")
                      .font(Font.custom("Plus Jakarta Sans", size: 14))
                      .kerning(0.25)
                      .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.13))
                }
                Spacer()
                Image("downArrowIcon")
                    .rotationEffect(Angle(degrees: isExtendedVets ? 180 : 0))
            }
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation(.easeIn(duration: 0.25)) {
                    isExtendedVets.toggle()
                }
            }
            .padding()
            if isExtendedVets {
                VStack {
                    Text("Some Information")
                }
                .padding()
            }
        }
    }
}
