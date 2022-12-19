//
//  PlaygroundApp.swift
//  Portals Playground
//
//  Created by Eric Horodyski on 12/19/22.
//

import SwiftUI
import IonicPortals

@main
struct PlaygroundApp: App {
  init() {
    if let portalsAPIKey = Bundle.main.infoDictionary?["PORTALS_API_KEY"] as? String {
      PortalsRegistrationManager.shared.register(key: portalsAPIKey)
    }
  }

  var body: some Scene {
    WindowGroup {
      NavigationView {
        EntryView()
      }
    }
  }
}
