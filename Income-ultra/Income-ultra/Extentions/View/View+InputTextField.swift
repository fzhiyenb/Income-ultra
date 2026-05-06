//
//  View+InputTextField.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 06.05.26.
//

import SwiftUI

extension View {
    func inputTextField() -> some View {
        self
            .keyboardType(.decimalPad)
            .padding (12)
            .frame (maxWidth: .infinity)
            .background(Color.appTheme.cellBackground)
            .cornerRadius(.textfield)
            .shadow(.regular)
    }
}
