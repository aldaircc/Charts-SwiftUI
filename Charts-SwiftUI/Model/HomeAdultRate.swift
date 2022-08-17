//
//  HomeAdultRate.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 15/08/22.
//

import Foundation

enum AmbitGeographic: String {
    case national
    case limaMetropolitan
    case urbanRest
    case ruralArea
    case naturalRegion
    case coastNorth
    case coastCentre
    case coastSouth
    case andeanNorth
    case andeanCentre
    case andeanSouth
    case jungle
    
    init?(rawValue: String) {
        switch rawValue.lowercased() {
        case "nacional": self = .national
        case "lima metropolitana": self = .limaMetropolitan
        case "resto urbano": self = .urbanRest
        case "área rural": self = .ruralArea
        case "región natural": self = .naturalRegion
        case "costa norte": self = .coastNorth
        case "costa centro": self = .coastCentre
        case "costa sur": self = .coastSouth
        case "sierra norte": self = .andeanNorth
        case "sierra centro": self = .andeanCentre
        case "sierra sur": self = .andeanSouth
        case "selva": self = .jungle
        default: return nil
        }
    }
}

enum HomeType: String {
    case unipersonal
    case nuclear
    case extended
    case others
    
    init?(rawValue: String) {
        switch rawValue.lowercased() {
        case "unipersonal": self = .unipersonal
        case "nuclear": self = .nuclear
        case "extended": self = .extended
        case "others": self = .others
        default: return nil
        }
    }
}

struct HomeAdultRate: Identifiable {
    let id = UUID()
    let rate: Double
    let home: HomeType
    let ambitGeograph: AmbitGeographic
}

let homeAdultRate: [HomeAdultRate] = [
    HomeAdultRate(rate: 19.6, home: .unipersonal, ambitGeograph: .national),
    HomeAdultRate(rate: 42, home: .nuclear, ambitGeograph: .national),
    HomeAdultRate(rate: 29.5, home: .extended, ambitGeograph: .national),
    HomeAdultRate(rate: 8.9, home: .others, ambitGeograph: .national)
]
