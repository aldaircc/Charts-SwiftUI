//
//  NatalityRateChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 27/06/22.
//

import SwiftUI
import Charts

struct NatalityRateChart: View {
    var body: some View {
        VStack {
            Text("Perú: Tasa bruta de natalidad y mortalidad, 1950-2050 (Por mil)")
                .multilineTextAlignment(.center)
                .fontWeight(.heavy)
            
            Chart {
                ForEach(natalityData, id: \.type) { tipo in
                    
                    ForEach(natalityData) { rate in
                        LineMark(
                            x: .value("Year", "\(tipo.year)"),
                            y: .value("Rate Index", tipo.value))
                    }
                    .foregroundStyle(by: .value("Types", tipo.type.rawValue))
                    .symbol(by: .value("Types", tipo.type.rawValue))
                }
            }
            .chartForegroundStyleScale([
                "Natalidad": .black,
                "Mortalidad": .green
            ])
        }
    }
}

struct NatalityRateChart_Previews: PreviewProvider {
    static var previews: some View {
        NatalityRateChart()
    }
}
