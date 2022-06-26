//
//  GrowingRateChart.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 25/06/22.
//

import SwiftUI
import Combine
import Charts

final class GrowingObservable: ObservableObject {
    @Published var data: [GrowingRate] = []
    var subscribers = Set<AnyCancellable>()
    
    init() {
        Timer.publish(every: 2, on: .main, in: .default)
            .autoconnect()
            .receive(on: DispatchQueue.main)
            .sink { _ in
                print("Completed")
            } receiveValue: { newValue in
                print(newValue)
                let index = self.data.count
                let dataGrowing = dataGrowingRate[index]
                self.data.append(dataGrowing)
            }
            .store(in: &subscribers)
    }
    
}

struct GrowingRateChart: View {
    @StateObject var growingOb = GrowingObservable()
    
    var body: some View {
        VStack {
            Text("Growing Rate")
            
        }
    }
}

struct GrowingRateChart_Previews: PreviewProvider {
    static var previews: some View {
        GrowingRateChart()
    }
}
