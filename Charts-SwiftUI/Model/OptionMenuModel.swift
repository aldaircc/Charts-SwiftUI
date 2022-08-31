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

struct OptionMenuModel: Identifiable {
    let id = UUID()
    let name: String
    let chartType: ChartType
    
    static let options: [OptionMenuModel] = [
        .init(name: "Densidad poblaciónal por paises", chartType: .barmark),
        .init(name: "Tasa de crecimiento", chartType: .barmark),
        .init(name: "Tasa bruta de natalidad", chartType: .barmark),
        .init(name: "Hogares con adulto mayor", chartType: .barmark),
        .init(name: "Hogares con servicios tecnologicos", chartType: .barmark),
        .init(name: "Evolución del PIB", chartType: .barmark),
        .init(name: "Incidencia de pobreza por edad", chartType: .barmark),
        .init(name: "Hogares con adulto mayor por Tipo hogar", chartType: .barmark),
        .init(name: "Tasa de desempleo por edad", chartType: .barmark),
        .init(name: "Incidencia de pobreza por lengua", chartType: .barmark)
    ]
}
