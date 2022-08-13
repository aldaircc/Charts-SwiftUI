//
//  PoornessRate.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 12/08/22.
//

import Foundation

enum AgeRange: Hashable {
    case _0To4(Double)
    case _5To9(Double)
    case _10To14(Double)
    case _15To19(Double)
    case _20To24(Double)
    case _25To29(Double)
    case _30To34(Double)
    case _35To39(Double)
    case _40To44(Double)
    case _45To49(Double)
    case _50To54(Double)
    case _55To59(Double)
    case _60To64(Double)
    case _65To69(Double)
    case _70ToMore(Double)
    
    func getAgeData() -> (String, Double) {
        switch self {
        case ._0To4(let value):
            return ("0 a 4", value)
        case ._5To9(let value):
            return ("5 a 9", value)
        case ._10To14(let value):
            return ("10 a 14", value)
        case ._15To19(let value):
            return ("15 a 19", value)
        case ._20To24(let value):
            return ("20 a 24", value)
        case ._25To29(let value):
            return ("25 a 29", value)
        case ._30To34(let value):
            return ("30 a 34", value)
        case ._35To39(let value):
            return ("35 a 39", value)
        case ._40To44(let value):
            return ("40 a 44", value)
        case ._45To49(let value):
            return ("45 a 49", value)
        case ._50To54(let value):
            return ("50 a 54", value)
        case ._55To59(let value):
            return ("55 a 59", value)
        case ._60To64(let value):
            return ("60 a 64", value)
        case ._65To69(let value):
            return ("65 a 69", value)
        case ._70ToMore(let value):
            return ("70 a More", value)
        }
    }
}

let poornessData: [AgeRange] = [
    AgeRange._0To4(31),
    AgeRange._5To9(28.5),
    AgeRange._10To14(28),
    AgeRange._15To19(22.3),
    AgeRange._20To24(16.4),
    AgeRange._25To29(16.4),
    AgeRange._30To34(21.2),
    AgeRange._35To39(20.5),
    AgeRange._40To44(18.3),
    AgeRange._45To49(16),
    AgeRange._50To54(14),
    AgeRange._55To59(13.3),
    AgeRange._60To64(13.2),
    AgeRange._65To69(14.3),
    AgeRange._70ToMore(16.2)
]
