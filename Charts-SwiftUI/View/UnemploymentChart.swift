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
                ForEach(UnemploymentRate.data.measureData, id: \.self) { obj in
                    BarMark(x: .value("Description", obj.description),
                            y: .value("Rate", obj.getValues().0))
                    .foregroundStyle(by:
                            .value("", obj.getValues().1))
                    
                    /*:
                     .foregroundStyle(by: .value("Types", typeRate.type.rawValue))
                     */
                }
            }
            .padding(10)
            .overlay {
                RoundedRectangle(cornerRadius: 9)
                    .stroke(lineWidth: 1)
                    .foregroundColor(.orange)
                    .padding(5)
            }
        }
    }
}

struct UnemploymentChart_Previews: PreviewProvider {
    static var previews: some View {
        UnemploymentChart()
    }
}
