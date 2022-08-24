//
//  PoornessLanguageRate.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 22/08/22.
//

import Foundation

enum Language: CustomStringConvertible {
    case Spanish(Double)
    case Native(Double)

    var description: String {
        switch self {
        case .Spanish(_):
            return "Español"
        case .Native(_):
            return "Lengua nativa 1/"
        }
    }
}

struct LanguagePoornessRate {
    let id = UUID()
    let kind: Language
}
