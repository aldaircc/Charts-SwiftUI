//
//  StartView.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 26/08/22.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List(OptionMenuModel.options, id: \.id) { option in
                    NavigationLink(destination: determineDestiny(option.destiny)) {
                        Text("\(option.name) - \(option.chartType.rawValue)")
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
    
    @ViewBuilder
    func determineDestiny(_ destiny: DestinyTarget) -> some View {
        switch destiny {
        case .densityPopulation: DensityPopulationChart()
        case .growingRate: GrowingRateChart()
        case .natalityRate: NatalityRateChart()
        case .availabilityService: AvailabiltyServiceChart()
        case .accessIt: AccessItChart()
        case .pbiEvolution: pbiEvolutionChart()
        case .poorness: PoornessChart()
        case .homeAdult: HomeAdultChart()
        case .unemployment: UnemploymentChart()
        case .poornessLanguage: PoornessChart()
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
