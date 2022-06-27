//
//  GrowingRate.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 25/06/22.
//

import Foundation

struct GrowingRate: Identifiable, Equatable {
    let year: Int
    let population: Int
    var id: Int { year }
}

let dataGrowingRate: [GrowingRate] = [
    .init(year: 1950, population: 7800000),
    .init(year: 1955, population: 8900000),
    .init(year: 1960, population: 10200000),
    .init(year: 1965, population: 11700000),
    .init(year: 1970, population: 13500000),
    .init(year: 1975, population: 15400000),
    .init(year: 1980, population: 17500000),
    .init(year: 1985, population: 19700000),
    .init(year: 1990, population: 22000000),
    .init(year: 1995, population: 24200000),
    .init(year: 2000, population: 26400000),
    
    .init(year: 2005, population: 27700000),
    .init(year: 2010, population: 29500000),
    .init(year: 2015, population: 30000000),
    .init(year: 2020, population: 32600000),
    .init(year: 2025, population: 34400000)
    
]
