//
//  DensityPopulationChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 20/06/22.
//

import SwiftUI
import Charts

struct DensityPopulationChart: View {
    var body: some View {

        VStack {
            Text("Gráfico Nº1 \n Densidad Poblacional de países con mayor superficie en el mundo \n (Habitantes por Km2)")
                .multilineTextAlignment(.center)
                .font(.headline)
                .foregroundColor(.blue)
            
            VStack {
                Chart(densityData) { element in
                    BarMark(
                        x: .value("Countries", element.name),
                        y: .value("Population", element.density))
                    .annotation {
                        Text("\(element.density)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                    }
                }
                
            }
            .padding(10)
            .overlay {
                RoundedRectangle(cornerRadius: 10, style: .circular)
                    .stroke(lineWidth: 2)
            }
            
        }
    }
}

struct DensityPopulationChart_Previews: PreviewProvider {
    static var previews: some View {
        DensityPopulationChart()
    }
}
