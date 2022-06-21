//
//  CountryPopulation.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 20/06/22.
//

import Foundation

struct CountryPopulation: Identifiable {
    let name: String
    let density: Int
    var id: String { name }
}

let densityData: [CountryPopulation] = [
    .init(name: "India", density: 420),
    .init(name: "China", density: 150),
    .init(name: "Indonesia", density: 144),
    .init(name: "México", density: 66),
    .init(name: "Irán", density: 51),
    .init(name: "Congo", density: 38),
    .init(name: "EUA", density: 34),
    .init(name: "Perú", density: 25),
    .init(name: "Brasil", density: 25),
    .init(name: "Sudán", density: 23),
    .init(name: "Argelia", density: 18),
    .init(name: "Argentina", density: 16),
    .init(name: "Arabia Saudita", density: 16),
    .init(name: "Rusia", density: 9),
    .init(name: "Kazajstan", density: 7),
    .init(name: "Libia", density: 4),
    .init(name: "Canadá", density: 4),
    .init(name: "Australia", density: 3),
    .init(name: "Mongolia", density: 2)
]
