//
//  PayOutputRowView.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 06.05.26.
//

import SwiftUI

struct PayOutputRowView: View {
    let name: String
    let output: Double

    var body: some View {
        HStack (spacing: 16) {
            nameView
            Spacer()
            outputView
        }
    }
}

private extension PayOutputRowView {
    var nameView: some View {
        Text(name)
            .font(.callout)
            .foregroundStyle(Color.appTheme.secondaryText)
    }
    var outputView: some View {
        Text("€ \(output.formattedAsWholeCurrencyOrInvalid)")
            .foregroundStyle(Color.appTheme.accent)
            .fontWeight(.semibold)
    }
}

#Preview {
    PayOutputRowView(name: "Weekly", output: 1_117)
        .padding()
        .infinityFrame()
        .background(Color.appTheme.viewBackground)
}
