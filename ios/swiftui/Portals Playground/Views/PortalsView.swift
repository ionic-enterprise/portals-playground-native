//
//  PortalsView.swift
//  Portals Playground
//
//  Created by Eric Horodyski on 12/19/22.
//

import SwiftUI
import IonicPortals

extension Portal {
  static let playground = Self(
    name: "playground",
    startDir: "portals/playground"
  )
}

struct PortalsView: View {
    var body: some View {
      PortalView(portal: .playground)
        .navigationTitle("Portals")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PortalsView_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView {
        PortalsView()
      }
    }
}
