//
//  IncomeLiveStore.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 23.04.26.
//

import Foundation

final class IncomeLiveStore: IncomeStore {
  func getSalaryOutput(for salaryInput: SalaryInput) -> SalaryOutput {
    calculateSalaryOutput(for: salaryInput)
  }

  func getHourlyOutput(for hourlyInput: HourlyInput) -> HourlyOutput {
    calculateHourlyOutput(for: hourlyInput)
  }
}

private extension IncomeLiveStore {
  func calculateSalaryOutput(for salaryInput: SalaryInput) -> SalaryOutput {
    guard let yearlyGrossPay = salaryInput.yearlyGross else {
      return .init()
    }

    let weeksInYear: Double = 52
    let monthsInYear: Double = 12
    let hoursPerWeek: Double = 40

    let weeklyGrossPay: Double = yearlyGrossPay / weeksInYear
    let biweeklyGrossPay: Double = weeklyGrossPay * 2
    let fourWeeklyGrossPay: Double = weeklyGrossPay * 4
    let monthlyGrossPay: Double = yearlyGrossPay / monthsInYear

    let hourlyWage: Double = weeklyGrossPay / hoursPerWeek

    let takeHomePercentageDefaultValue: Double = 83.00
    let takeHomePercentage = salaryInput.takeHomePercentage ?? takeHomePercentageDefaultValue
    let takeHomeMultiplier = takeHomePercentage / 100

    return .init(
      hourlyWage: hourlyWage,
      takeHomePay: .init(
        incomeType: .takeHome,
        weekly: weeklyGrossPay * takeHomeMultiplier,
        biWeekly: biweeklyGrossPay * takeHomeMultiplier,
        fourWeekly: fourWeeklyGrossPay * takeHomeMultiplier,
        monthly: monthlyGrossPay * takeHomeMultiplier,
        yearly: yearlyGrossPay * takeHomeMultiplier
      ),
      grossPay: .init(
        incomeType: .gross,
        weekly: weeklyGrossPay,
        biWeekly: biweeklyGrossPay,
        fourWeekly: fourWeeklyGrossPay,
        monthly: monthlyGrossPay,
        yearly: yearlyGrossPay
      )
    )
  }

  func calculateHourlyOutput(for hourlyInput: HourlyInput) -> HourlyOutput {
    guard let hourlyWage = hourlyInput.hourlyWage,
          let hoursPerWeek = hourlyInput.hoursPerWeek
    else {
      return .init()
    }

    let weeksInYear: Double = 52
    let monthsInYear: Double = 12
    let hoursPerWeekLimitForOvertime: Double = 40
    let overtimeRate: Double = 1.5

    let regularHours = min(hoursPerWeek, hoursPerWeekLimitForOvertime)
    let overtimeHours = max(0, hoursPerWeek - hoursPerWeekLimitForOvertime)
    let overtimeHourlyWage = hourlyWage * overtimeRate
    let shouldCalculateOvertime: Bool = (overtimeHours > 0 && hourlyInput.overtime)

    let weeklyGrossPay: Double = shouldCalculateOvertime ?
      (regularHours * hourlyWage) + (overtimeHours * overtimeHourlyWage) :
      (hoursPerWeek * hourlyWage)
    let biweeklyGrossPay = weeklyGrossPay * 2
    let fourWeeklyGrossPay = weeklyGrossPay * 4
    let yearlyGrossPay = weeklyGrossPay * weeksInYear
    let monthlyGrossPay = yearlyGrossPay / monthsInYear

    let takeHomePercentageDefaultValue: Double = 83.00
    let takeHomePercentage = hourlyInput.takeHomePercentage ?? takeHomePercentageDefaultValue
    let takeHomeMultiplier = takeHomePercentage / 100

    return .init(
      takeHomePay: .init(
        incomeType: .takeHome,
        weekly: weeklyGrossPay * takeHomeMultiplier,
        biWeekly: biweeklyGrossPay * takeHomeMultiplier,
        fourWeekly: fourWeeklyGrossPay * takeHomeMultiplier,
        monthly: monthlyGrossPay * takeHomeMultiplier,
        yearly: yearlyGrossPay * takeHomeMultiplier
      ),
      grossPay: .init(
        incomeType: .gross,
        weekly: weeklyGrossPay,
        biWeekly: biweeklyGrossPay,
        fourWeekly: fourWeeklyGrossPay,
        monthly: monthlyGrossPay,
        yearly: yearlyGrossPay
      )
    )
  }
}
