//
//  AppDelegate.swift
//  Portals Playground
//
//  Created by Eric Horodyski on 12/14/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    if let portalsAPIKey = Bundle.main.infoDictionary?["PORTALS_API_KEY"] as? String {
      print(portalsAPIKey)
    }
    return true
  }

  

}

