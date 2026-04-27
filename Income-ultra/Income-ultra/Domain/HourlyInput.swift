//
//  HourlyInput.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 24.04.26.
//

import Foundation

struct HourlyInput {
    var hourlyWage: Double?
    var hourspPerWeek: Double?
    var takeHomePercentage: Double?
    var overtime: Bool

    init(hourlyWage: Double? = nil, hoursperWeek: Double? = nil, takeHomePercentage: Double? = nil, overtime: Bool = true){
        self.hourlyWage = hourlyWage
        self.hourspPerWeek = hoursperWeek
        self.takeHomePercentage = takeHomePercentage
        self.overtime = overtime
    }

    let hoursPerWeekLimitForOvertime: Double = 40
}
