//
//  AppInfoLiveStore.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 23.04.26.
//

import Foundation

struct AppInfoLiveStore {
    let name: String = "Income Ultra"
    let description: String = "Income Ultra calculates your income from hourly rates or salary, including overtime, and provides detailed financial breakdowns."
    let developer: String = "Fariza Zhiyenbayeva"
    let website: String = "https://www.fzhiyenb.com/projects/income-ultra"
    let agreements: Agreements = .init()

    var version: String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        }
        return "_"
    }

    var compatibillity: String {
        if let minVersion = Bundle.main.infoDictionary?["MinimumOSVersion"] as? String {
            return "iOS \(minVersion)+"
        }
        return "_"
    }
}

extension AppInfoLiveStore {
    struct Agreements {
        let nivacyPolicyUrl: String = "https://www.fzhiyenb.com/projects/income-ultra"
        let termsAndConditionsUrl: String = "https://www.fzhiyenb.com/projects/income-ultra"
        let copyrightPolicyUrl: String = "https://www.fzhiyenb.com/projects/income-ultra"
        let disclaimerUrl: String = "https://www.fzhiyenb.com/projects/income-ultra"}
}
