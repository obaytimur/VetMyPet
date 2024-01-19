//
//  Constants.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import Foundation

enum VariableConstants {
    static let ExPet = Pet(name: "Lotus", birthday: Date.now, sex: .female)
    static let ExPet2 = Pet(name: "Lotus", birthday: Date.now, sex: .female)
    
    static let PetArray = [ExPet, ExPet2]
}

enum ViewConstants {
    static let petInfoShortWidth: CGFloat = 350
    static let petInfoShortHeight: CGFloat = 100
    
    static let petInfoLongWidth: CGFloat = 350
    static let petInfoLongHeight: CGFloat = 300
}

enum Tabs: String, CaseIterable {
    case Home
    case Health
    case Pets
}
