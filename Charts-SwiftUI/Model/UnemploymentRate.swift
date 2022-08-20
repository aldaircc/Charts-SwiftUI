//
//  UnemploymentRate.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 19/08/22.
//

import Foundation

enum Gender {
    case male
    case female
}

enum AgeMeasure {
    case _14To29(Double, Gender)
    case _30To49(Double, Gender)
    case _50To59(Double, Gender)
    case _60To69(Double, Gender)
    case _70ToMore(Double, Gender)
}

struct UnemploymentRate: Identifiable {
    var id = UUID()
    let measureData: [AgeMeasure]
    let femaleAverage: Double
    let maleAverage: Double
}
