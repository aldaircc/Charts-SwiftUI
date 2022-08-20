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
    
    public static let data: [UnemploymentRate] = [
        UnemploymentRate(measureData: [AgeMeasure._14To29(11.7, .female),
                                       AgeMeasure._14To29(9.7, .male),
                                       AgeMeasure._30To49(3.4, .female),
                                       AgeMeasure._30To49(1.9, .male),
                                       AgeMeasure._50To59(1.9, .female),
                                       AgeMeasure._50To59(1.9, .male),
                                       AgeMeasure._60To69(1.7, .female),
                                       AgeMeasure._60To69(2.6, .male),
                                       AgeMeasure._70ToMore(1.1, .female),
                                       AgeMeasure._70ToMore(3.3, .male)],
                         femaleAverage: 5.1,
                         maleAverage: 4.2)
    ]
}
