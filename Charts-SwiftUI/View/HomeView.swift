//
//  HomeView.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 28/09/22.
//

import SwiftUI

struct HomeView: View {
    @State var showMenu = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                MainView(showMenu: $showMenu)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                    .disabled(self.showMenu ? true : false)
                if self.showMenu {
                    MenuView()
                        .frame(width: geometry.size.width / 2)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct MainView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        Button {
            withAnimation {
                self.showMenu = true
            }
        } label: {
            Text("Show menu")
        }
    }
}
