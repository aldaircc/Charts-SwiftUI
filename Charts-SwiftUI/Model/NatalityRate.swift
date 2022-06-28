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

struct NatalityRate: IndexRate {
    let value: Double
    
}

struct MortalityRate: IndexRate {
    let value: Double
}

struct CrudeRate: Identifiable {
    let year: Int
    let natality: NatalityRate
    let mortality: MortalityRate
    var id: Int { year }
}

var natalityData: [CrudeRate] = [
    .init(year: 1950, natality: .init(value: 49.0), mortality: .init(value: 22.1))
]
