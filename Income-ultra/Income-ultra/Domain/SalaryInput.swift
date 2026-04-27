//
//  SalaryInput.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 24.04.26.
//

import Foundation

struct SalaryInput {
    var yearlyGross: Double?
    var takeHomePercentage: Double?

    init(yearlyGross: Double? = nil, takeHomePercentage: Double? = nil) {
        self.yearlyGross = yearlyGross
        self.takeHomePercentage = takeHomePercentage    
    }
}
