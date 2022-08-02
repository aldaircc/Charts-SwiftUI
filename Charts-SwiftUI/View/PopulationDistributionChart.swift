//
//  PopulationDistributionChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 9/07/22.
//

import SwiftUI
import Charts

struct PopulationDistributionChart: View {
    var body: some View {
        Chart(distributionData) { object in
            RectangleMark(xStart: .value("Percent", 0),
                          xEnd: .value("Percent", object.percent),
                          y: .value("Age", object.ageRange.description))
            .foregroundStyle(by: .value("Genre", object.genre.rawValue))
        }
        .chartXAxis {
            let percentRanges = [-12, -10, -8, -6, -4, -2, 0, 2, 4, 6, 8, 10, 12]
            AxisMarks(values: percentRanges) { value in
                AxisGridLine()
                AxisTick()
                AxisValueLabel {
                    Text(verbatim: "\(percentRanges[value.index])%")
                }
            }
        }
        .chartYAxis {
            AxisMarks { value in
                AxisGridLine()
                AxisTick()
                AxisValueLabel {
                    Text("\(distributionData[value.index].ageRange.description)")
                        .foregroundColor(.black.opacity(0.8))
                        .fontWeight(.bold)
                }
            }
        }
    }
}

struct PopulationDistributionChart_Previews: PreviewProvider {
    static var previews: some View {
        PopulationDistributionChart()
    }
}
