//
//  pbiEvolutionChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 5/08/22.
//

import SwiftUI
import Charts

struct pbiEvolutionChart: View {
    private let maxPercent = abs(Int(pbiData.max { $1.percentage > $0.percentage }?.percentage ?? 0))
    private let minPercent = abs(Int(pbiData.min { $0.percentage < $1.percentage }?.percentage ?? 0))
    var percentRange: [Int] {
        let maxAbs = (maxPercent > minPercent ? maxPercent : minPercent) + 5
        let x = (-maxAbs...maxAbs).filter { $0 % 5 == 0 }.map { Int($0) }
        return x
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Perú: Evolución del producto bruto interno:\n2001 - 2020\nVariación porcentual respecto al año anterior")
                .multilineTextAlignment(.center)
                .fontWeight(.semibold)
                .foregroundColor(.blue)
            
            Chart(pbiData) { obj in
                BarMark(x: .value("Year", "\(obj.year)"),
                        y: .value("Percentage",obj.percentage))
                .foregroundStyle(obj.percentage < 0 ? Color.green : Color.orange)
                .annotation(
                    position: (obj.percentage >= 0 ? .top : .bottom),
                    alignment: .center,
                    spacing: 5) {
                        Text(verbatim: "\(obj.percentage)")
                            .font(.system(size: 10))
                    }
            }
            .padding()
            .chartXAxis {
                AxisMarks { value in
                    AxisGridLine()
                    AxisTick()
                    AxisValueLabel(
                        centered: true,
                        anchor: .top,
                        multiLabelAlignment: .center,
                        collisionResolution: .automatic,
                        orientation: .vertical,
                        verticalSpacing: 18) {
                        let year = pbiData[value.index].year
                        Text(verbatim: "\(year)")
                            .frame(minWidth: 50)
                            .rotationEffect(Angle(degrees: -90))
                    }
                }
            }
            .chartYAxis {
                AxisMarks(values: percentRange) { value in
                    AxisGridLine()
                    AxisTick()
                    AxisValueLabel {
                        let currentValue = value.as(Int.self)
                        Text("\(currentValue ?? -1)")
                    }
                }
            }
            .background {
                RoundedRectangle(cornerRadius: 9)
                    .stroke(lineWidth: 1)
                    .foregroundColor(.orange)
                    .padding(5)
            }
        }
    }
}

struct pbiEvolutionChart_Previews: PreviewProvider {
    static var previews: some View {
        pbiEvolutionChart()
    }
}
