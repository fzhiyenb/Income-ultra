//
//  SalaryOutpu.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 27.04.26.
//

import Foundation

struct SalaryOutput {
    let hourlyRate: Double
    let takenDays: Pay
    let grossPay: Pay

    init(hourlyRate: Double = 0.0, takenDays: Pay = .init(incomeType: .takeHome), grossPay: Pay = .init(incomeType: .gross)) {
        self.hourlyRate = hourlyRate
        self.takenDays = takenDays
        self.grossPay = grossPay
    }
}
