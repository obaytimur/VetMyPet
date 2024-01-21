//
//  Constants.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import Foundation

enum VariableConstants {
    static let ExPet = Pet(name: "Lotus", birthdayAsString: "22/03/2019", sex: .female)
    static let ExPet2 = Pet(name: "Boncuk", birthdayAsString: "15/06/2021", sex: .female)
    
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
