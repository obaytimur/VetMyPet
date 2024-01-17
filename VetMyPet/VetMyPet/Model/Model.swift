//
//  Model.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 16/01/2024.
//

import Foundation

struct Pet {
    var id = UUID()
    var name: String
    var birthday: Date
    var sex: Sex
    
    init(id: UUID = UUID(), name: String, birthday: Date, sex: Sex) {
        self.id = id
        self.name = name
        self.birthday = birthday
        self.sex = sex
    }
}

enum Sex {
    case female, male
}
enum CatBreed: String, CaseIterable {
    case Tekir = "Tekir"
    case ExoShortHair = "Exotic Shorthair"
   
}
enum DogBreed: String, CaseIterable {
    case Husky = "Husky"
    case GoldRet = "Golden Retriever"
}
