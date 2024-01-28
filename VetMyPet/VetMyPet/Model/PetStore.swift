//
//  PetStore.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 27/01/2024.
//

import SwiftUI

@MainActor
class PetStore: ObservableObject {
    @Published var pets: [Pet] = []
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent("pets.data")
    }
    
    func load() async throws {
        let task = Task<[Pet], Error> {
            let fileURL = try Self.fileURL()
            guard let data = try? Data(contentsOf: fileURL) else {
                return[]
            }
            let petsArray = try JSONDecoder().decode([Pet].self, from: data)
            return petsArray
        }
        let pets = try await task.value
        self.pets = pets
    }
    func save(pets: [Pet]) async throws {
        let task = Task {
            let data = try JSONEncoder().encode(pets)
            let outfile = try Self.fileURL()
            try data.write(to: outfile)
        }
        _ = try await task.value
    }
}
