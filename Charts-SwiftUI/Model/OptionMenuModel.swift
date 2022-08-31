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
    let chartType: String
    
    static let options: [OptionMenuModel] = [
        .init(name: "Densidad poblaciónal por paises", chartType: <#T##String#>)
    ]
}
