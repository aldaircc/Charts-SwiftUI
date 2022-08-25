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
                BarMark(
                    x: .value("Year", String(obj.year)),
                    y: .value("Rate", obj.kind.rate))
                .foregroundStyle(by: .value("Language", obj.kind.description))
            }
        }
    }
}

struct PoornessLanaguageChrt_Previews: PreviewProvider {
    static var previews: some View {
        PoornessLanaguageChart()
    }
}
