//
//  View+Ext.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 23.04.26.
//

import SwiftUI
extension View {
    func primaryButton() -> some View {
        self
            .font (.headline)
            .foregroundStyle(Color.appTheme.accentContrastText)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.appTheme.accent)
            .cornerRadius(.button)
            .shadow(.regular)
    }

    func destructiveButton() -> some View {
        self
            .font(.headline)
            .foregroundStyle(Color.appTheme.accentContrastText)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.appTheme.destructive)
            .cornerRadius (.button)
            .shadow(.regular)
    }

    func plainButton() -> some View {
        self
            .font(.headline)
            .foregroundStyle(Color.appTheme.text)
            .frame(maxWidth: .infinity)
            .padding()
    }
}

#Preview {
    Preview()
}

fileprivate struct Preview: View {
    var body: some View {
        VStack (spacing: 24) {
            Text("Get Started")
                .primaryButton()
                .button(.press) {
                }

            Text ("Sign Out")
                .destructiveButton()
                .button(.press) {
                }

            Text ("Cancel")
                .plainButton()
                .button {
                }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.appTheme.viewBackground)
    }
}
