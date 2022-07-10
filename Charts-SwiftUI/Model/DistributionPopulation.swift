//
//  DistributionPopulation.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 9/07/22.
//

import Foundation

enum Genre: String, CaseIterable {
    case male = "Male"
    case female = "Female"
}

enum AgeRange: Int, CaseIterable {
    case zeroToFour = 1, fiveToNine = 2, tenToFourteen = 3
}

struct DistributionPopulation: Identifiable {
    let genre: Genre
    let percent: Double
    let ageRange: AgeRange
    var id = UUID()
}

let distributionData: [DistributionPopulation] = [
    .init(genre: .male, percent: 8.3, ageRange: .zeroToFour),
    .init(genre: .male, percent: 6.2, ageRange: .fiveToNine),
    .init(genre: .male, percent: 5.7, ageRange: .tenToFourteen),
    .init(genre: .female, percent: -7.2, ageRange: .zeroToFour),
    .init(genre: .female, percent: -5.1, ageRange: .fiveToNine),
    .init(genre: .female, percent: -4.3, ageRange: .tenToFourteen)
]