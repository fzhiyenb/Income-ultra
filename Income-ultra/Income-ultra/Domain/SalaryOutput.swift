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

    init(hourlyRate: Double = 0.0, takenDays: Pay = .init(inconeType: .takeHome), grossPay: Pay = .init(inconeType: .gross)) {
        self.hourlyRate = hourlyRate
        self.takenDays = takenDays
        self.grossPay = grossPay
    }
}
