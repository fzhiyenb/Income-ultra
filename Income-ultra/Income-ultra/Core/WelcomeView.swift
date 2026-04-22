//
//  WelcomeView.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 22.04.26.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var shouldShowWelcomeView: Bool

    var body: some View {
        VStack {
            Text("Welcome View")
            Button {
                shouldShowWelcomeView = false
            } label: {
                Text("Get started")
            }
        }
    }
}

#Preview {
    WelcomeView(shouldShowWelcomeView: .constant(true))
}
