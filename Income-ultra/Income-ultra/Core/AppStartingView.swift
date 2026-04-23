//
//  ContentView.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 22.04.26.
//

import SwiftUI

struct AppStartingView: View {
    @StateObject private var viewModell = AppStartingViewModel()

    var body: some View {
        Group {
            if viewModell.shouldShowWelcomeView {
                WelcomeView(shouldShowWelcomeView: $viewModell.shouldShowWelcomeView)
            } else {
                HomeTabView()
            }
        }
        .animation(.easeIn, value: viewModell.shouldShowWelcomeView)
    }
}

#Preview {
    AppStartingView()
}
