//
//  pbiEvolutionChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 5/08/22.
//

import SwiftUI
import Charts

struct pbiEvolutionChart: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Perú: Evolución del producto bruto interno:\n2001 - 2020\nVariación porcentual respecto al año anterior")
                .multilineTextAlignment(.center)
            
            Chart(pbiData) { obj in
                BarMark(x: .value("Year", "\(obj.year)"),
                        y: .value("Percentage",obj.percentage))
            }
            .chartXAxis {
                AxisMarks { value in
                    AxisGridLine()
                    AxisTick()
                    AxisValueLabel {
                        let year = pbiData[value.index]
                        Text("year: \(year.year)")
                    }
                }
            }
        }
    }
}

struct pbiEvolutionChart_Previews: PreviewProvider {
    static var previews: some View {
        pbiEvolutionChart()
    }
}
