//
//  HomeAdultRate.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 15/08/22.
//

import Foundation

enum AmbitGeographic: String, CustomStringConvertible {
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
    
    var description: String {
        switch self {
        case .national:
            return "Nacional"
        case .limaMetropolitan:
            return "Lima Metropolitana"
        case .urbanRest:
            return "Resto urbano"
        case .ruralArea:
            return "Área rural"
        case .naturalRegion:
            return "Región Natural"
        case .coastNorth:
            return "Costa Norte"
        case .coastCentre:
            return "Costa Centro"
        case .coastSouth:
            return "Costa Sur"
        case .andeanNorth:
            return "Sierra Norte"
        case .andeanCentre:
            return "Sierra Centro"
        case .andeanSouth:
            return "Sierra Sur"
        case .jungle:
            return "Selva"
        }
    }
    
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

enum HomeType: String, CustomStringConvertible {
    case unipersonal
    case nuclear
    case extended
    case others
    
    var description: String {
        switch self {
        case .unipersonal:
            return "Unipersonal"
        case .nuclear:
            return "Nuclear"
        case .extended:
            return "Extendido"
        case .others:
            return "Otros 1/"
        }
    }
    
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

let homeAdultData: [HomeAdultRate] = [
    HomeAdultRate(rate: 19.6, home: .unipersonal, ambitGeograph: .national),
    HomeAdultRate(rate: 42, home: .nuclear, ambitGeograph: .national),
    HomeAdultRate(rate: 29.5, home: .extended, ambitGeograph: .national),
    HomeAdultRate(rate: 8.9, home: .others, ambitGeograph: .national),
    
    HomeAdultRate(rate: 14, home: .unipersonal, ambitGeograph: .limaMetropolitan),
    HomeAdultRate(rate: 41.5, home: .nuclear, ambitGeograph: .limaMetropolitan),
    HomeAdultRate(rate: 34.1, home: .extended, ambitGeograph: .limaMetropolitan),
    HomeAdultRate(rate: 10.5, home: .others, ambitGeograph: .limaMetropolitan),
    
    HomeAdultRate(rate: 18.8, home: .unipersonal, ambitGeograph: .urbanRest),
    HomeAdultRate(rate: 40, home: .nuclear, ambitGeograph: .urbanRest),
    HomeAdultRate(rate: 31.9, home: .extended, ambitGeograph: .urbanRest),
    HomeAdultRate(rate: 9.3, home: .others, ambitGeograph: .urbanRest),
    
    HomeAdultRate(rate: 28.9, home: .unipersonal, ambitGeograph: .ruralArea),
    HomeAdultRate(rate: 46.3, home: .nuclear, ambitGeograph: .ruralArea),
    HomeAdultRate(rate: 18.9, home: .extended, ambitGeograph: .ruralArea),
    HomeAdultRate(rate: 5.8, home: .others, ambitGeograph: .ruralArea),
    
    HomeAdultRate(rate: 0, home: .unipersonal, ambitGeograph: .naturalRegion),
    HomeAdultRate(rate: 0, home: .nuclear, ambitGeograph: .naturalRegion),
    HomeAdultRate(rate: 0, home: .extended, ambitGeograph: .naturalRegion),
    HomeAdultRate(rate: 0, home: .others, ambitGeograph: .naturalRegion),
    
    HomeAdultRate(rate: 14.3, home: .unipersonal, ambitGeograph: .coastNorth),
    HomeAdultRate(rate: 38.5, home: .nuclear, ambitGeograph: .coastNorth),
    HomeAdultRate(rate: 36.7, home: .extended, ambitGeograph: .coastNorth),
    HomeAdultRate(rate: 10.5, home: .others, ambitGeograph: .coastNorth),
    
    HomeAdultRate(rate: 17.7, home: .unipersonal, ambitGeograph: .coastCentre),
    HomeAdultRate(rate: 37.2, home: .nuclear, ambitGeograph: .coastCentre),
    HomeAdultRate(rate: 34.7, home: .extended, ambitGeograph: .coastCentre),
    HomeAdultRate(rate: 10.5, home: .others, ambitGeograph: .coastCentre),
    
    HomeAdultRate(rate: 20, home: .unipersonal, ambitGeograph: .coastSouth),
    HomeAdultRate(rate: 47.2, home: .nuclear, ambitGeograph: .coastSouth),
    HomeAdultRate(rate: 25.1, home: .extended, ambitGeograph: .coastSouth),
    HomeAdultRate(rate: 7.7, home: .others, ambitGeograph: .coastSouth),
    
    HomeAdultRate(rate: 27.4, home: .unipersonal, ambitGeograph: .andeanNorth),
    HomeAdultRate(rate: 43.3, home: .nuclear, ambitGeograph: .andeanNorth),
    HomeAdultRate(rate: 21.9, home: .extended, ambitGeograph: .andeanNorth),
    HomeAdultRate(rate: 7.5, home: .others, ambitGeograph: .andeanNorth),
    
    HomeAdultRate(rate: 30.3, home: .unipersonal, ambitGeograph: .andeanCentre),
    HomeAdultRate(rate: 42.4, home: .nuclear, ambitGeograph: .andeanCentre),
    HomeAdultRate(rate: 21.3, home: .extended, ambitGeograph: .andeanCentre),
    HomeAdultRate(rate: 6.0, home: .others, ambitGeograph: .andeanCentre),
    
    HomeAdultRate(rate: 26.6, home: .unipersonal, ambitGeograph: .andeanSouth),
    HomeAdultRate(rate: 47.4, home: .nuclear, ambitGeograph: .andeanSouth),
    HomeAdultRate(rate: 19.5, home: .extended, ambitGeograph: .andeanSouth),
    HomeAdultRate(rate: 6.5, home: .others, ambitGeograph: .andeanSouth),
    
    HomeAdultRate(rate: 16.8, home: .unipersonal, ambitGeograph: .jungle),
    HomeAdultRate(rate: 41.6, home: .nuclear, ambitGeograph: .jungle),
    HomeAdultRate(rate: 32.9, home: .extended, ambitGeograph: .jungle),
    HomeAdultRate(rate: 8.7, home: .others, ambitGeograph: .jungle)
]
