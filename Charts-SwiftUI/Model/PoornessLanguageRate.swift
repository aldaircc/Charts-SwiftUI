//
//  PoornessLanguageRate.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 22/08/22.
//

import Foundation

enum Language: CustomStringConvertible, Hashable {
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
    
    var rate: Double {
        switch self {
        case .Spanish(let rate):
            return rate
        case .Native(let rate):
            return rate
        }
    }
}

struct LanguagePoornessRate: Identifiable {
    let id = UUID()
    let kind: [Language]
    let year: Int
    
    static let data = [
        LanguagePoornessRate(kind: [.Native(60), .Spanish(31.6)], year: 2008),
        LanguagePoornessRate(kind: [.Native(53.8), .Spanish(28.5)], year: 2009),
        LanguagePoornessRate(kind: [.Native(49.7), .Spanish(26.1)], year: 2010),
        LanguagePoornessRate(kind: [.Native(44.4), .Spanish(23.6)], year: 2011),
        LanguagePoornessRate(kind: [.Native(40.4), .Spanish(22.2)], year: 2012),
        LanguagePoornessRate(kind: [.Native(35.9), .Spanish(20.8)], year: 2013),
        LanguagePoornessRate(kind: [.Native(35.4), .Spanish(19.5)], year: 2014),
        LanguagePoornessRate(kind: [.Native(33.4), .Spanish(18.8)], year: 2015),
        LanguagePoornessRate(kind: [.Native(32.6), .Spanish(17.8)], year: 2016),
        LanguagePoornessRate(kind: [.Native(33), .Spanish(18.6)], year: 2017),
        LanguagePoornessRate(kind: [.Native(32.4), .Spanish(17.5)], year: 2018),
        LanguagePoornessRate(kind: [.Native(30.5), .Spanish(17.6)], year: 2019)
    ]
}
