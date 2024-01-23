//
//  Model.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 16/01/2024.
//

import Foundation

struct Pet: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var birthday: Date = Date.now
    var birthdayAsString: String
    var sex: Sex
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
    
    init(id: UUID = UUID(), name: String, birthdayAsString: String, sex: Sex) {
        self.id = id
        self.name = name
        self.birthdayAsString = birthdayAsString
        self.sex = sex
    }
    
    mutating func addWeight(weight: Int) {
        self.weight.append(weight)
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
