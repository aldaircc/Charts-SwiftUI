//
//  AvailabiltyServiceChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 1/08/22.
//

import SwiftUI
import Charts

struct AvailabiltyServiceChart: View {
    var body: some View {
        Chart(basicServiceData) { obj in
            BarMark(
                x: .value("Location", obj.location),
                y: .value("Percentage", obj.percentage)
            )
            .foregroundStyle(by: .value("Location", obj.waterService.rawValue))
        }
        .chartForegroundStyleScale([
            "Con servicio de agua por red pública 1": .teal.opacity(0.8),
            "Sin servicio de agua por red pública 2": .red.opacity(0.5)])
    
    }
}

struct AvailabiltyServiceChart_Previews: PreviewProvider {
    static var previews: some View {
        AvailabiltyServiceChart()
    }
}
