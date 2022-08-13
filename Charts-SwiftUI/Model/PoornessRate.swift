//
//  PoornessRate.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 12/08/22.
//

import Foundation

enum AgeRange {
    case _0To4(Int)
    case _5To9(Int)
    case _10To14(Int)
    case _15To19(Int)
    case _20To24(Int)
    case _25To29(Int)
    case _30To34(Int)
    case _35To39(Int)
    case _40To44(Int)
    case _45To49(Int)
    case _50To54(Int)
    case _55To59(Int)
    case _60To64(Int)
    case _65To69(Int)
    case _70ToMore(Int)
    
    func getAgeData() -> (String, Int) {
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

let poornessData: [(String, Int)] = [
    AgeRange._0To4(31).getAgeData(),
    AgeRange._5To9(1).getAgeData(),
    AgeRange._10To14(1).getAgeData(),
    AgeRange._15To19(1).getAgeData(),
    AgeRange._20To24(1).getAgeData(),
    AgeRange._25To29(1).getAgeData(),
    AgeRange._30To34(1).getAgeData(),
    AgeRange._35To39(1).getAgeData(),
    AgeRange._40To44(1).getAgeData(),
    AgeRange._45To49(1).getAgeData(),
    AgeRange._50To54(1).getAgeData(),
    AgeRange._55To59(1).getAgeData(),
    AgeRange._60To64(1).getAgeData(),
    AgeRange._65To69(1).getAgeData(),
    AgeRange._70ToMore(1).getAgeData()
]
