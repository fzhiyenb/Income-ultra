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
    @Published var salaryInput: SalaryInput = .init()
    @Published var salaryOutput: SalaryOutput = .init()
    @Published var hourlyInput: HourlyInput = .init()
    @Published var hourlyOutput: HourlyOutput = .init()
    @Injected(\.incomeStore) var incomeStore
    @Injected(\.appInfoStore) var appInfoStore

    var shouldShowOvertimeCheck: Bool {
        (hourlyInput.hourspPerWeek ?? 0) > hourlyInput.hoursPerWeekLimitForOvertime
    }

    var appName: String {
        appInfoStore.name
    }
}
