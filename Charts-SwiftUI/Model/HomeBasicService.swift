//
//  HomeBasicService.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 1/08/22.
//

import Foundation

enum WaterService: String {
    case withService = "Con servicio de agua por red pública 1"
    case withoutService = "Sin servicio de agua por red pública 2"
}

struct HomeBasicService: Identifiable {
    var id: String { location }
    let location: String
    let percentage: Double
    let waterService: WaterService
}

let basicServiceData: [HomeBasicService] = [
    HomeBasicService(location: "Nacional", percentage: 90.8, waterService: .withService),
    HomeBasicService(location: "Lima Metropolitana", percentage: 97.6, waterService: .withService)
]
