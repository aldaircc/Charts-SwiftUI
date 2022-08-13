//
//  PoornessChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 12/08/22.
//

import SwiftUI
import Charts

struct PoornessChart: View {
    var body: some View {
        VStack {
            Text("Incidencia de la pobreza por grupos de edad, 2019")
            
            Chart {
                ForEach(poornessData, id: \.self) {  obj in
                    let value = obj.getAgeData()
                    BarMark(
                        x: .value("Ranges", value.0),
                        y: .value("Rate", value.1))
                }
                RuleMark(y: .value("Average", 15))
                    .foregroundStyle(.black)
                    .lineStyle(.init(
                        lineWidth: 0.5,
                        lineCap: CGLineCap.round,
                        lineJoin: CGLineJoin.round,
                        miterLimit: 0,
                        dash: [10],
                        dashPhase: 1) )
            }
            
        }
    }
}

struct PoornessChart_Previews: PreviewProvider {
    static var previews: some View {
        PoornessChart()
    }
}
