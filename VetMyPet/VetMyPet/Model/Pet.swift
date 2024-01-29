//
//  Model.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 16/01/2024.
//

import Foundation

struct Pet: Identifiable, Hashable, Codable {
    var id = UUID()
    var name: String
    var birthday: Date = Date()
    var birthdayAsString: String
    var sex: Sex = .notMentioned
    var animalType: AnimalType
    var breed: Breed
    var age: [Int] {
        calculateAge()
    }
    var weight: [Int] = Array()
    
    private func calculateAge() -> [Int] {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let birthday = formatter.date(from: birthdayAsString) ?? Date()
        let calendar = Calendar.current
        let currentDate = Date()
        let componentsYear = calendar.dateComponents([.year], from: birthday, to: currentDate)
        let componentsMonth = calendar.dateComponents([.month], from: birthday, to: currentDate)
        return [componentsYear.year ?? 0, componentsMonth.month ?? 0]
        }
    
    init(id: UUID = UUID(), name: String, birthdayAsString: String, sex: Sex, animalType: AnimalType, breed: Breed) {
        self.id = id
        self.name = name
        self.birthdayAsString = birthdayAsString
        self.sex = sex
        self.animalType = animalType
        self.breed = breed
    }
    
    mutating func addWeight(weight: Int) {
        self.weight.append(weight)
    }
}

extension Pet {
    static var emptyPet: Pet {
        Pet(name: "", birthdayAsString: "", sex: .notMentioned, animalType: .notMentioned, breed: .notMentioned)
    }
}
