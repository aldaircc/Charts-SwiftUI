//
//  GrowingRate.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 25/06/22.
//

import Foundation

struct GrowingRate: Identifiable {
    let year: Int
    let population: Int
    var id: Int { year }
}
