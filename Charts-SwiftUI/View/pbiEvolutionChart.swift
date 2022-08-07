//
//  pbiEvolutionChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 5/08/22.
//

import SwiftUI
import Charts

struct pbiEvolutionChart: View {
    private let maxPercent = Int(pbiData.max { $1.percentage > $0.percentage }?.percentage ?? 0)
    private let minPercent = Int(pbiData.min { $0.percentage < $1.percentage }?.percentage ?? 0)
    
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
                        let year = pbiData[value.index].year
                        Text(verbatim: "\(year)")
                            .frame(minWidth: 50)
                            .rotationEffect(Angle(degrees: 90))
                    }
                }
            }
            .chartYAxis {
                let array = (minPercent...maxPercent).filter { $0 % 5 == 0 }.map { Int($0) }
                
                AxisMarks(values: array) { value in
                    AxisGridLine()
                    AxisTick()
                    AxisValueLabel {
                        let currentValue = value.as(Int.self)
                        Text("\(currentValue ?? -1)")
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
