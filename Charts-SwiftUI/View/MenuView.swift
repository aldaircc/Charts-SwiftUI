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
                    //Text(option.name)
                    NavigationLink(option.name, destination: Text("x"))
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
