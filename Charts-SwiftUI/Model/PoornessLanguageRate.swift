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
    let year: Int
    
    static let data = [
        LanguagePoornessRate(kind: .Native(60), year: 2008),
        LanguagePoornessRate(kind: .Native(53.8), year: 2009),
        LanguagePoornessRate(kind: .Native(49.7), year: 2010),
        LanguagePoornessRate(kind: .Native(44.4), year: 2011),
        LanguagePoornessRate(kind: .Native(40.4), year: 2012),
        LanguagePoornessRate(kind: .Native(35.9), year: 2013),
        LanguagePoornessRate(kind: .Native(35.4), year: 2014),
        LanguagePoornessRate(kind: .Native(33.4), year: 2015),
        LanguagePoornessRate(kind: .Native(32.6), year: 2016),
        LanguagePoornessRate(kind: .Native(33), year: 2017),
        LanguagePoornessRate(kind: .Native(32.4), year: 2018),
        LanguagePoornessRate(kind: .Native(30.5), year: 2019),
        LanguagePoornessRate(kind: .Spanish(31.6), year: 2008),
        LanguagePoornessRate(kind: .Spanish(28.5), year: 2009),
        LanguagePoornessRate(kind: .Spanish(26.1), year: 2010),
        LanguagePoornessRate(kind: .Spanish(23.6), year: 2011),
        LanguagePoornessRate(kind: .Spanish(22.2), year: 2012),
        LanguagePoornessRate(kind: .Spanish(20.8), year: 2013),
        LanguagePoornessRate(kind: .Spanish(19.5), year: 2014),
        LanguagePoornessRate(kind: .Spanish(18.8), year: 2015),
        LanguagePoornessRate(kind: .Spanish(17.8), year: 2016),
        LanguagePoornessRate(kind: .Spanish(18.6), year: 2017),
        LanguagePoornessRate(kind: .Spanish(17.5), year: 2018),
        LanguagePoornessRate(kind: .Spanish(17.6), year: 2019)
    ]
}
