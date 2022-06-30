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
            VStack {
                Chart {
                    ForEach(rateData, id: \.type) { typeRate in
                        
                        ForEach(typeRate.rates) { rate in
                            LineMark(
                                x: .value("Year", String(describing: rate.year)),
                                y: .value("Rate", rate.value))
                            .foregroundStyle(by: .value("Types", typeRate.type.rawValue))
                            .symbol(by: .value("Types", typeRate.type.rawValue))
                        }
                        .annotation {
                            Text("Tasa bruta de \(typeRate.type.rawValue)")
                        }
                        
                    }
                }
                .chartForegroundStyleScale([
                    "Natalidad": .black,
                    "Mortalidad": .green
                ])
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 15, style: .circular)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.orange)
            }
        }
        .padding()
    }
}

struct NatalityRateChart_Previews: PreviewProvider {
    static var previews: some View {
        NatalityRateChart()
    }
}
