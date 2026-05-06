//
//  IncomeViewModel.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 27.04.26.
//

import Foundation
import Combine
import Factory

@MainActor
final class IncomeViewModel: ObservableObject {
    @Published var incomePickerValue: IncomePickerView.IncomeType = .salary
    @Injected(\.incomeStore) var incomeStore
    @Injected(\.appInfoStore) var appInfoStore

    var appName: String {
        appInfoStore.name
    }
}
