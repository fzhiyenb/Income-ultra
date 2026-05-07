//
//  IncomeStore.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 23.04.26.
//

import Foundation

protocol IncomeStore {
    func getSalaryOutput(for salaryInput: SalaryInput) -> SalaryOutput
    func getHourlyOutput(for hourlyInput: HourlyInput) -> HourlyOutput
}
