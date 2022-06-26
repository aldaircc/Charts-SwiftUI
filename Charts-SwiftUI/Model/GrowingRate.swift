//
//  GrowingRate.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 25/06/22.
//

import Foundation

struct GrowingRate: Identifiable {
    let year: Int
    let population: Int
    var id: Int { year }
}

let dataGrowingRate: [GrowingRate] = [
    .init(year: 1950, population: 780000),
    .init(year: 1955, population: 890000),
    .init(year: 1960, population: 10200000),
    .init(year: 1965, population: 11700000),
    .init(year: 1970, population: 13500000),
    .init(year: 1975, population: 15400000)
]
