//
//  PoornessChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 12/08/22.
//

import SwiftUI
import Charts

struct PoornessChart: View {
    let average = poornessData
        .map { $0.getAgeData().1 }
        .reduce(0) { $0 + Int($1) } / poornessData.count
    
    var body: some View {
        VStack {
            Text("Incidencia de la pobreza por grupos de edad, 2019")
                .foregroundColor(.blue.opacity(0.8))
            
            Chart {
                ForEach(poornessData, id: \.self) {  obj in
                    let value = obj.getAgeData()
                    BarMark(
                        x: .value("Ranges", value.0),
                        y: .value("Rate", value.1))
                    .annotation {
                        Text(verbatim: "\(value.1)")
                            .font(.system(size: 9, weight: .bold))
                    }
                }
                
                RuleMark(y: .value("Average", average))
                    .foregroundStyle(.black)
                    .lineStyle(.init(
                        lineWidth: 1,
                        lineCap: CGLineCap.round,
                        lineJoin: CGLineJoin.round,
                        miterLimit: 0,
                        dash: [5],
                        dashPhase: 5) )
            }
            .chartXAxis {
                AxisMarks { value in
                    AxisTick()
                    AxisValueLabel(centered: true,
                                   anchor: .center,
                                   multiLabelAlignment: .trailing,
                                   collisionResolution: .automatic,
                                   offsetsMarks: true,
                                   orientation: .horizontal,
                                   horizontalSpacing: 5,
                                   verticalSpacing: 15) {
                        let x = poornessData[value.index].getAgeData().0
                        Text(x)
                            .multilineTextAlignment(.trailing)
                            .frame(minWidth: 90, idealHeight: 50)
                            .background(.red)
                            .rotationEffect(Angle(degrees: 90))
                    }
                }
            }
            .padding(8)
            .overlay {
                RoundedRectangle(cornerRadius: 9, style: .circular)
                    .stroke(lineWidth: 1)
                    .foregroundColor(.orange)
            }
        }
    }
}

struct PoornessChart_Previews: PreviewProvider {
    static var previews: some View {
        PoornessChart()
    }
}
