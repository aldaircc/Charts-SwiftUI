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
        }
    }
}

struct NatalityRateChart_Previews: PreviewProvider {
    static var previews: some View {
        NatalityRateChart()
    }
}
