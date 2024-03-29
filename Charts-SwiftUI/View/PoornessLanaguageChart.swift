//
//  PoornessLanaguageChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 22/08/22.
//

import SwiftUI
import Charts

struct PoornessLanaguageChart: View {
    var body: some View {
        VStack {
            Text("Perú: Incidencia de la pobreza, según lengua materna, 2008 - 2019")
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
                .fontWeight(.semibold)
            
            Chart(LanguagePoornessRate.data) { obj in
                ForEach(obj.kind, id: \.self) { kind in
//                    BarMark(
//                        x: .value("Year", String(obj.year)),
//                        y: .value("Rate", kind.rate),
//
//                        stacking: MarkStackingMethod.center)
//                    .foregroundStyle(by: .value("Language", kind.description))
                    
                    BarMark(
                        x: .value("Year", String(obj.year)),
                        y: .value("Rate", kind.rate),

                        stacking: MarkStackingMethod.unstacked)
                    .annotation(
                        position: .overlay,
                        alignment: .center,
                        spacing: 0, content: {
                            Text(verbatim: "\(kind.rate)")
                                .font(.system(size: 10))
                                .foregroundColor(.white)
                        })
                    .foregroundStyle(by: .value("Language", kind.description))
                }
            }
            .padding(15)
            .overlay {
                RoundedRectangle(cornerRadius: 9, style: .continuous)
                    .stroke(lineWidth: 1)
                    .fill(.orange)
                    .padding(5)
            }
        }
    }
}

struct PoornessLanaguageChrt_Previews: PreviewProvider {
    static var previews: some View {
        PoornessLanaguageChart()
    }
}
