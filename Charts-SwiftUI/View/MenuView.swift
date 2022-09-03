//
//  MenuView.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 26/08/22.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List(OptionMenuModel.options, id: \.id) { option in
                    NavigationLink(destination: determineDestiny()) {
                        Text("\(option.name)")
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
    
    @ViewBuilder
    func determineDestiny() -> some View {
        Text("Hello world!")
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
