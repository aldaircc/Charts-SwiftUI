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
    let type: TypeRateIndex
    var id: Int { year }
}

var natalityData: [CrudeRate] = [
    .init(year: 1950, value: 49.0, type: .natality),
    .init(year: 1950, value: 22.1, type: .mortality),
    .init(year: 1955, value: 48.4, type: .natality),
    .init(year: 1955, value: 20.9, type: .mortality),
    .init(year: 1960, value: 47.6, type: .natality),
    .init(year: 1960, value: 18.5, type: .mortality),
    .init(year: 1965, value: 45.4, type: .natality),
    .init(year: 1965, value: 16.2, type: .mortality),
    .init(year: 1970, value: 42.6, type: .natality),
    .init(year: 1970, value: 13.6, type: .mortality),
    .init(year: 1975, value: 39.4, type: .natality),
    .init(year: 1975, value: 11.4, type: .mortality)
]
