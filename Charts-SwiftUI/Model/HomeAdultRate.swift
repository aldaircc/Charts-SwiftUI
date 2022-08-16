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
