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
            
            Chart {
                ForEach(poornessData, id: \.self) {  obj in
                    let value = obj.getAgeData()
                    BarMark(
                        x: .value("Ranges", value.0),
                        y: .value("Rate", value.1))
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
            
        }
    }
}

struct PoornessChart_Previews: PreviewProvider {
    static var previews: some View {
        PoornessChart()
    }
}
