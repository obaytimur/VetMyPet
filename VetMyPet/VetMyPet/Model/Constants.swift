//
//  Constants.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import Foundation

enum VariableConstants {
    static let ExPet = Pet(name: "Lotus", birthdayAsString: "22/03/2019", sex: .female, animalType: .notMentioned, breed: "Tekir")
    static let ExPet2 = Pet(name: "Boncuk", birthdayAsString: "15/06/2021", sex: .female, animalType: .notMentioned, breed: "Tekir")
    
    static let PetArray = [ExPet, ExPet2]
}

enum ViewConstants {
    static let petInfoShortWidth: CGFloat = 350
    static let petInfoShortHeight: CGFloat = 100
    
    static let petInfoLongWidth: CGFloat = 350
    static let petInfoLongHeight: CGFloat = 300
    
    static let petHealthInfoWidth: CGFloat = 350
    static let petHealthInfoHeight: CGFloat = 300
}

enum Tabs: String, CaseIterable {
    case Home
    case Health
    case Pets
}

enum Sex: Codable, CaseIterable, CustomStringConvertible, Identifiable{
    case female
    case male
    case notMentioned
    
    var id: Self { self }
    
    var description: String {
        switch self {
        case .female: return "Female"
        case .male: return "Male"
        case .notMentioned: return "Not Mentioned"
        }
    }
}

enum AnimalType: Codable, CustomStringConvertible, Identifiable, CaseIterable {
    case notMentioned
    case cat
    case dog
    
    var id: Self { self }
    
    var description: String {
        switch self {
        case .notMentioned: return "Not Mentioned"
        case .cat: return "Cat"
        case .dog: return "Dog"
        }
    }
}

protocol Animal {
    
}
enum Cat: Codable, Identifiable, CaseIterable, Animal {
    case notMentioned
    case tekir
    case exoShortHair
    
    var id: Self { self }
    
    var description: String {
        switch self {
        case .notMentioned: return "Not Mentioned"
        case .tekir: return "Tekir"
        case .exoShortHair: return "Exotic Short Hair"
        }
    }
}
enum Dog: Codable, Identifiable, CaseIterable, Animal  {
    case notMentioned
    case husky
    case goldRet
    
    var id: Self { self }
    
    var description: String {
        switch self {
        case .notMentioned: return "Not Mentioned"
        case .husky: return "Husky"
        case .goldRet: return "Golden Retriever"
        }
    }
}

enum Breeds {
    static let Cats = ["Tekir", "Exotic Short hair"]
    static let Dogs = ["Husky", "Golden Retriever"]
}
