//
//  SettingsViewModel.swift
//  Income-ultra
//
//  Created by Fariza Zhiyenbayeva on 07.05.26.
//

import Foundation
import Combine
import Factory

@MainActor
final class SettingsViewModel: ObservableObject {
  @Injected(\.appInfoStore) var appInfoStore

  var applicationData: InfoBoxView.Data {
    .init(
      title: "Application",
      sfSymbol: "apps.iphone",
      infoData: [
        .init(title: "Developer", description: appInfoStore.developer),
        .init(title: "Version", description: appInfoStore.version),
        .init(title: "Compatibility", description: appInfoStore.compatibillity),
        .init(title: "Website", urlString: appInfoStore.website)
      ])
  }

  var agreementsData: InfoBoxView.Data {
    .init(
      title: "Agreements",
      sfSymbol: "apps.iphone",
      infoData: [
        .init(title: "Privacy Policy", urlString: appInfoStore.agreements.privacyPolicyUrl),
        .init(title: "Terms & Conditions", urlString: appInfoStore.agreements.termsAndConditionsUrl),
        .init(title: "Copyright Policy", urlString: appInfoStore.agreements.copyrightPolicyUrl),
        .init(title: "Disclaimer", urlString: appInfoStore.agreements.disclaimerUrl)
      ])
  }

  func getAppName() -> String {
    appInfoStore.name
  }

  func getAppDescription() -> String {
    appInfoStore.description
  }
}
