//
//  HomeTabView.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 22.04.26.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            incomeTabItemView
            settingsTabItemView
        }
    }
}

private extension HomeTabView {
    var incomeTabItemView: some View {
        NavigationStack {
            IncomeView()
        }
        .tabItem {
            Image(systemName: "dollarsign.square")
            Text("Income")
        }
    }

    var settingsTabItemView: some View {
        NavigationStack {
            IncomeView()
        }
        .tabItem {
            Image(systemName: "gearshape")
            Text("Settings")
        }
    }
}

#Preview {
    HomeTabView()
}
