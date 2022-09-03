//
//  OptionMenuModel.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 30/08/22.
//

import Foundation

enum ChartType: String {
    case barmark
    case rectangle
    case line
    case point
    
    init?(rawValue: String) {
        switch rawValue.lowercased() {
        case "barmark": self = .barmark
        case "rectangle", "square": self = .rectangle
        case "line", "lines": self = .line
        case "point", "points": self = .point
        default: return nil
        }
    }
}

enum DestinyTarget {
    case densityPopulation
    case growingRate
    case natalityRate
    case availabilityService
    case accessIt
    case pbiEvolution
    case poorness
    case homeAdult
    case unemployment
    case poornessLanguage
}

struct OptionMenuModel: Identifiable {
    let id = UUID()
    let name: String
    let chartType: ChartType
    let destiny: DestinyTarget
    
    static let options: [OptionMenuModel] = [
        .init(name: "Densidad poblaciónal por paises", chartType: .barmark, destiny: .densityPopulation),
        .init(name: "Tasa de crecimiento", chartType: .barmark, destiny: .growingRate),
        .init(name: "Tasa bruta de natalidad", chartType: .barmark, destiny: .natalityRate),
        .init(name: "Hogares con adulto mayor", chartType: .barmark, destiny: .availabilityService),
        .init(name: "Hogares con servicios tecnologicos", chartType: .barmark, destiny: .accessIt),
        .init(name: "Evolución del PIB", chartType: .barmark, destiny: .pbiEvolution),
        .init(name: "Incidencia de pobreza por edad", chartType: .barmark, destiny: .poorness),
        .init(name: "Hogares con adulto mayor por Tipo hogar", chartType: .barmark, destiny: .homeAdult),
        .init(name: "Tasa de desempleo por edad", chartType: .barmark, destiny: .unemployment),
        .init(name: "Incidencia de pobreza por lengua", chartType: .barmark, destiny: .poorness)
    ]
}
