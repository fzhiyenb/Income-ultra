//
//  WelcomeViewModel.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 23.04.26.
//

import Foundation
import Combine

@MainActor
final class WelcomeViewModel: ObservableObject {

    func getAppName() -> String {
        return "Income Ultra"
    }
}
