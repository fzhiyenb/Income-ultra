//
//  SettingsView.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 23.04.26.
//

import SwiftUI

struct SettingsView: View {
    @StateObject private var viewModel = SettingsViewModel()
    @AppStorage(UserDefaultsKeys.isDarkModeEnabled) private var isDarkModeEnabled = true

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                introBoxView
                customizationBoxView
                applicationBoxView
            }
            .padding()
        }
        .infinityFrame()
        .background(Color.appTheme.viewBackground)
    }
}

private extension SettingsView {
    var introBoxView: some View {
        IntroBoxView(data: .init(
            title: viewModel.getAppName(),
            sfSymbol: "info,circle",
            imageName: "AppIconImage",
            description: viewModel.getAppDescription()))
    }

    var customizationBoxView: some View {
        BoxView(data: .init(
            title: "Customization",
            sfSymbol: "paintbrush")
        ) {
            Toggle("Dark Node", isOn: $isDarkModeEnabled)
                .tint(.appTheme.accent)
        }
    }

    var applicationBoxView: some View {
        InfoBoxView(with: viewModel.agreementsData)
    }
}
#Preview {
    SettingsView()
}
