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
    let timerPublisher = Timer.publish(every: 1, on: .main, in: .default)
    
    init() {
        timerPublisher
            .autoconnect()
            .receive(on: DispatchQueue.main)
            .sink { _ in
                print("Completed")
            } receiveValue: { newValue in
                let index = self.data.count
                if index < dataGrowingRate.count {
                    let dataGrowing = dataGrowingRate[index]
                    self.data.append(dataGrowing)
                } else {
                    self.subscribers.first?.cancel()
                }
            }
            .store(in: &subscribers)
    }
}

struct GrowingRateChart: View {
    @StateObject var growingOb = GrowingObservable()
    
    var body: some View {
        VStack {
            Text("Growing Rate")
            Chart(growingOb.data) { grow in
                BarMark(
                    x: .value("Year", "\(grow.year)"),
                    y: .value("Population", grow.population))
            }
            .chartXAxis {
                AxisMarks { value in
                    AxisValueLabel {
                        let year = growingOb.data[value.index]
                        Text(verbatim: "\(year.year)")
                            .fontWeight(.black)
                            .rotationEffect(.degrees(90))
                            .offset(x: 0, y: 5)
                            .padding(.vertical, 8)
                    }
                }
            }
            .animation(.easeOut(duration: 1), value: growingOb.data)
        }
    }
}

struct GrowingRateChart_Previews: PreviewProvider {
    static var previews: some View {
        GrowingRateChart()
    }
}
