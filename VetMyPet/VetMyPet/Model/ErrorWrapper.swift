//
//  ErrorWrapper.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 28/01/2024.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
