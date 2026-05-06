//
//  View+hideKeyboardOnTap.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 06.05.26.
//

import SwiftUI

extension View {
  func hideKeyboardOnTap() -> some View {
    self
      .onTapGesture {
        hideKeyboard()
      }
  }
}
