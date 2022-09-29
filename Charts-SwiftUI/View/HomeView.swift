//
//  HomeView.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 28/09/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Button {
            print("Open the side menu")
        } label: {
            Text("Show menu")
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
