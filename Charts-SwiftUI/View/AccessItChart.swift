//
//  AccessItChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 3/08/22.
//

import SwiftUI
import Charts

struct AccessItChart: View {
    var body: some View {
        VStack {
            Text("Hogares con al menos un adulto mayor que cuentan con servicio de internet y televisión por cable en su vivienda")
                .multilineTextAlignment(.center)
                .fontWeight(.semibold)
                .foregroundColor(.blue)
            
            Chart(accessItData) { obj in
                BarMark(
                    x: .value("Service", obj.service.rawValue),
                    y: .value("Percentage", obj.percentage)
                )
                .foregroundStyle(by: .value("Service", obj.service.rawValue))
            }
            .chartXAxis {
                AxisMarks { value in
                    AxisTick()
                    AxisValueLabel(centered: true, anchor: .center, multiLabelAlignment: .center, collisionResolution: .truncate, offsetsMarks: .none, orientation: .vertical, horizontalSpacing: 10, verticalSpacing: 10) {
                        Text(accessItData[value.index].service.rawValue)
                            .multilineTextAlignment(.center)
                            .frame(minWidth: 50, minHeight: 30, idealHeight: 100)
                    }
                    
                }
            }
            .chartForegroundStyleScale(
                [
                    HomeService.withInternet.rawValue: .blue,
                    HomeService.withoutInternet.rawValue: .red,
                    HomeService.withTvWire.rawValue: .blue,
                    HomeService.withoutTvWire.rawValue: .red
                ]
            )
            .chartLegend(.hidden)
            .padding(15)
            .background {
                RoundedRectangle(cornerRadius: 9)
                    .stroke(lineWidth: 2)
                    .fill(.orange)
                    .padding(5)
            }
        }
    }
}

struct AccessItChart_Previews: PreviewProvider {
    static var previews: some View {
        AccessItChart()
    }
}
