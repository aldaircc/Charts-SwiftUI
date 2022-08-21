//
//  UnemploymentChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 19/08/22.
//

import SwiftUI
import Charts

struct UnemploymentChart: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Tasa de desempleo en el área urbana por grupos de edad, según sexo, 2019 (Porcentaje)")
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
                .fontWeight(.semibold)
        
            Chart {
//                ForEach(UnemploymentRate.data.measureData, id: \.self) { obj in
//                    BarMark(x: .value("", obj.),
//                            y: .value("", obj))
//                }
            }
        }
    }
}

struct UnemploymentChart_Previews: PreviewProvider {
    static var previews: some View {
        UnemploymentChart()
    }
}
