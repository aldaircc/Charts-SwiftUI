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
    case withTvWire
    case withoutTvWire
}

struct AccessIT: Identifiable {
    let id = UUID()
    let service: HomeService
    let percentage: Double
}

let accessItData: [AccessIT] = [
    AccessIT(service: .withInternet, percentage: 33.7),
    AccessIT(service: .withoutInternet, percentage: 66.3),
    AccessIT(service: .withTvWire, percentage: 38.9),
    AccessIT(service: .withoutTvWire, percentage: 61.1)
]
