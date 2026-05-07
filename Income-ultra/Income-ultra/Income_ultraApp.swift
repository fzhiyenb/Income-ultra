//
//  Income_ultraApp.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 22.04.26.
//

import SwiftUI

@main
struct Income_ultraApp: App {
    @AppStorage(UserDefaultsKeys.isDarkModeEnabled) private var isDarkModeEnabled: Bool = true

    var body: some Scene {
        WindowGroup {
            AppStartingView()
                .preferredColorScheme(isDarkModeEnabled ? .dark : .light)
        }
    }
}
