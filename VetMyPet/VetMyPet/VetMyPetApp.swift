//
//  VetMyPetApp.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 16/01/2024.
//

import SwiftUI

@main
struct VetMyPetApp: App {
    @StateObject private var store = PetStore()
    @State private var errorWrapper: ErrorWrapper?
    var body: some Scene {
        WindowGroup {
            ContentView(pets: $store.pets) {
                Task {
                    do {
                        try await store.save(pets: store.pets)
                    } catch {
                        errorWrapper = ErrorWrapper(error: error, guidance: "Try again later.")
                    }
                }
            }
                .task {
                    do {
                        try await store.load()
                    } catch {
                        errorWrapper = ErrorWrapper(error: error, guidance: "VetMyPet will load sample data and contunie.")
                    }
                }
                .sheet(item: $errorWrapper) {
                    store.pets = VariableConstants.PetArray
                } content: { wrapper in
                    ErrorView(errorWrapper: wrapper)
                }
        }
    }
}
