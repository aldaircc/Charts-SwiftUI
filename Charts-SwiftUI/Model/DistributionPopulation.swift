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
    case zeroToFour = 1, fiveToNine, tenToFourteen
}

struct DistributionPopulation {
    let genre: Genre
    let percent: Double
    let ageRange: AgeRange
}
