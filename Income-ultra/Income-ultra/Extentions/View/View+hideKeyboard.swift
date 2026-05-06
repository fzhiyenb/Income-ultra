//
//  View+Keyboard.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 06.05.26.
//

import SwiftUI

extension View {
  func hideKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}
