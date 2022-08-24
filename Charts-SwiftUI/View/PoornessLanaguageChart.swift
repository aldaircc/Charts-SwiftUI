//
//  PoornessLanaguageChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 22/08/22.
//

import SwiftUI

struct PoornessLanaguageChart: View {
    var body: some View {
        Text("Perú: Incidencia de la pobreza, según lengua materna, 2008 - 2019")
            .multilineTextAlignment(.center)
            .foregroundColor(.blue)
            .fontWeight(.semibold)
    }
}

struct PoornessLanaguageChrt_Previews: PreviewProvider {
    static var previews: some View {
        PoornessLanaguageChart()
    }
}
