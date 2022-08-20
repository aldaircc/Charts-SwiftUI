//
//  UnemploymentChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 19/08/22.
//

import SwiftUI

struct UnemploymentChart: View {
    var body: some View {
        VStack {
            Text("Tasa de desempleo en el área urbana por grupos de edad, según sexo, 2019 (Porcentaje)")
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
                .fontWeight(.semibold)
        }
    }
}

struct UnemploymentChart_Previews: PreviewProvider {
    static var previews: some View {
        UnemploymentChart()
    }
}
