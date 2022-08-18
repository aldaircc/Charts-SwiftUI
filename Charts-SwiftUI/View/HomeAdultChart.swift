//
//  HomeAdultChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 16/08/22.
//

import SwiftUI
import Charts

struct HomeAdultChart: View {
    var body: some View {
        VStack() {
            Text("Hogares con al menos un adulto mayor por tipo de hogar, según ámbito geográfico, 2019")
            
            Chart(homeAdultData) { obj in
                BarMark(
                    x: .value("rate", obj.rate),
                    y: .value("ambit", obj.ambitGeograph.description),
                    width: .fixed(20),
                    height: .fixed(10)
                )
                .annotation(position: .overlay,
                            alignment: .center,
                            spacing: 0,
                            content: {
                    Text(verbatim: "\(obj.rate)")
                        .font(.system(size: 11))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                })
                .foregroundStyle(by: .value("home", obj.home.description))
            }
            .chartXAxis {
                AxisMarks(values: [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]) { value in
                    let x = value.as(Int.self) ?? 0
                    AxisValueLabel {
                        Text(verbatim: "\(x)")
                    }
                }
            }
        }
    }
}

struct HomeAdultChart_Previews: PreviewProvider {
    static var previews: some View {
        HomeAdultChart()
    }
}
