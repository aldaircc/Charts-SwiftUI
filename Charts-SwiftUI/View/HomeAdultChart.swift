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
                    y: .value("ambit", obj.ambitGeograph.rawValue))
                .foregroundStyle(by: .value("home", obj.home.rawValue))
            }
        }
    }
}

struct HomeAdultChart_Previews: PreviewProvider {
    static var previews: some View {
        HomeAdultChart()
    }
}
