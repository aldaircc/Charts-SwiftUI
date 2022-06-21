//
//  DensityPopulationChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 20/06/22.
//

import SwiftUI
import Charts

struct DensityPopulationChart: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Chart(densityData) { element in
                BarMark(
                    x: .value("Countries", element.name),
                    y: .value("Population", element.density))
            }
        }
    }
}

struct DensityPopulationChart_Previews: PreviewProvider {
    static var previews: some View {
        DensityPopulationChart()
    }
}
