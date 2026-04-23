//
//  WelcomeViewModel.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 23.04.26.
//

import Foundation
import Combine
import Factory

@MainActor
final class WelcomeViewModel: ObservableObject {
    @Injected(\.appInfoStore) var appInfoStore

    func getAppName() -> String {
        appInfoStore.name
    }
}
