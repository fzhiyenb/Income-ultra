//
//  HourlyOutput.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 27.04.26.
//

import Foundation

struct HourlyOutput {
    let takeHomePay: Pay
    let grossPay: Pay

    init(takeHomePay: Pay = .init(incomeType: .takeHome), grossPay: Pay = .init(incomeType: .gross)) {
        self.takeHomePay = takeHomePay
        self.grossPay = grossPay
    }
}
