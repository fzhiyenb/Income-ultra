//
//  Container+Registration.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 23.04.26.
//

import Foundation
import Factory

extension Container {
    var appInfoStore: Factory<AppInfoLiveStore> {
        self { MainActor.assumeIsolated { AppInfoLiveStore() }}.singleton
    }

    var incomStore: Factory<IncomeStore> {
        self { MainActor.assumeIsolated { IncomeLiveStore() }}.singleton
    }
}
