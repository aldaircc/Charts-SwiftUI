//
//  NatalityRate.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 27/06/22.
//

import Foundation

protocol IndexRate {
    var value: Double { get }
}

enum TypeRateIndex: String {
    case mortality = "Mortalidad"
    case natality = "Natalidad"
}

struct CrudeRate: Identifiable {
    let year: Int
    let value: Double
    var id: Int { year }
}

struct RateIndex: Identifiable {
    let type: TypeRateIndex
    let rates: [CrudeRate]
    var id: String { type.rawValue }
}

var rateData: [RateIndex] = [
    .init(type: .natality, rates: [
        .init(year: 1950, value: 49.0),
        .init(year: 1955, value: 48.4),
        .init(year: 1960, value: 47.6),
        .init(year: 1965, value: 45.4),
        .init(year: 1970, value: 42.6),
        .init(year: 1975, value: 39.4)
    ]),
    .init(type: .mortality, rates: [
        .init(year: 1950, value: 22.1),
        .init(year: 1955, value: 20.9),
        .init(year: 1960, value: 18.5),
        .init(year: 1965, value: 16.2),
        .init(year: 1970, value: 13.6),
        .init(year: 1975, value: 11.4)
    ])
]
