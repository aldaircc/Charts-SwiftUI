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

enum AgeRange: Int, CaseIterable, CustomStringConvertible {
    case _0To4 = 1,
         _5To9 = 2,
         _10To14 = 3,
         _15To19 = 4,
         _20To24 = 5,
         _25To29 = 6,
         _30To34 = 7,
         _35To39 = 8,
         _40To44 = 9,
         _45To49 = 10,
         _50To54 = 11,
         _55To59 = 12,
         _60To64 = 13,
         _65To69 = 14,
         _70To74 = 15,
         _75To79 = 16,
         _80ToMore = 17
    
    
    var description: String {
        switch self {
        case ._0To4:
            return "0-4"
        case ._5To9:
            return "5-9"
        case ._10To14:
            return "10-14"
        case ._15To19:
            return "15-19"
        case ._20To24:
            return "20-24"
        case ._25To29:
            return "25-29"
        case ._30To34:
            return "30-34"
        case ._35To39:
            return "35-39"
        case ._40To44:
            return "40-44"
        case ._45To49:
            return "45-49"
        case ._50To54:
            return "50-54"
        case ._55To59:
            return "55-59"
        case ._60To64:
            return "60-64"
        case ._65To69:
            return "65-69"
        case ._70To74:
            return "70-74"
        case ._75To79:
            return "75-79"
        case ._80ToMore:
            return "80 y más"
        }
    }
}

struct DistributionPopulation: Identifiable {
    let genre: Genre
    let percent: Double
    let ageRange: AgeRange
    var id = UUID()
}

let distributionData: [DistributionPopulation] = [
    .init(genre: .male, percent: 5.7, ageRange: ._10To14),
    .init(genre: .male, percent: 6.2, ageRange: ._5To9),
    .init(genre: .male, percent: 8.3, ageRange: ._0To4),
    .init(genre: .female, percent: -7.2, ageRange: ._0To4),
    .init(genre: .female, percent: -5.1, ageRange: ._5To9),
    .init(genre: .female, percent: -4.3, ageRange: ._10To14)
]
