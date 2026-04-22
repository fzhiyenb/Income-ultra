//
//  AppStartingViewModel.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 22.04.26.
//

import Foundation
import Combine

@MainActor
final class AppStartingViewModel: ObservableObject {
    @Published var shouldShowWelcomeView: Bool = true

}
