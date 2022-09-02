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
                ForEach(OptionMenuModel.options) { option in
                    NavigationLink(option.name, destination: determineDestiny())
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
