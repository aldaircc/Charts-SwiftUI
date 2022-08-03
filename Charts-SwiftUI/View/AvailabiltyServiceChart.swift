//
//  AvailabiltyServiceChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 1/08/22.
//

import SwiftUI
import Charts

struct AvailabiltyServiceChart: View {
    var body: some View {
        VStack {
            Text("PERÚ: HOGARES CON ALMENOS UN ADULTO MAYOR QUE TIENEN DISPONIBILIDAD DE SERVICIO DE AGUA POR RED PÚBLICA, SEGÚN ÁMBITO GEOGRÁFICO, 2019 (Porcentaje respecto al total de hogares con almenos un adulto mayor)")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(.blue.opacity(0.7))
            
            Chart(basicServiceData) { obj in
                BarMark(
                    x: .value("Location", obj.location),
                    y: .value("Percentage", obj.percentage)
                )
                .annotation(position: .overlay,
                            alignment: .center,
                            spacing: 0,
                            content: {
                    Text(verbatim: "\(obj.percentage)")
                        .fontWeight(.semibold)
                        .foregroundColor(.black.opacity(0.5))
                })
                .foregroundStyle(by: .value("Location", obj.waterService.rawValue))
            }
            .chartLegend(alignment: .center, spacing: 15)
            .chartForegroundStyleScale([
                "Con servicio de agua por red pública 1": .teal.opacity(0.8),
                "Sin servicio de agua por red pública 2": .red.opacity(0.5)])
            .padding(10)
            .overlay {
                RoundedRectangle(cornerRadius: 9, style: .circular)
                    .stroke(lineWidth: 1)
                    .foregroundColor(.orange)
                    .padding(2)
            }

        }
    }
}

struct AvailabiltyServiceChart_Previews: PreviewProvider {
    static var previews: some View {
        AvailabiltyServiceChart()
    }
}
