//
//  PopulationDistributionChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 9/07/22.
//

import SwiftUI
import Charts

struct PopulationDistributionChart: View {
    var body: some View {
        Chart(distributionData) { object in
            RectangleMark(xStart: .value("Percent", 0),
                          xEnd: .value("Percent", object.percent),
                          y: .value("Age", object.ageRange.rawValue))
            .foregroundStyle(by: .value("Genre", object.genre.rawValue))
        }
        .chartYScale(domain: AgeRange.zeroToFour.rawValue...AgeRange.tenToFourteen.rawValue)
    }
}

struct PopulationDistributionChart_Previews: PreviewProvider {
    static var previews: some View {
        PopulationDistributionChart()
    }
}
