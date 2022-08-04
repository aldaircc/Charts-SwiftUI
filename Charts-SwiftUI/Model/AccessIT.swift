//
//  AccessIT.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 3/08/22.
//

import Foundation

enum HomeService: String {
case withInternet
    case withoutInternet
    case withTvwire
    case withoutTvWire
}

struct AccessIT: Identifiable {
    let id = UUID()
    let service: HomeService
    let percentage: Double
}
