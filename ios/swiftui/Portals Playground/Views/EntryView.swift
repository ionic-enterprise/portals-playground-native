//
//  EntryView.swift
//  Portals Playground
//
//  Created by Eric Horodyski on 12/19/22.
//

import SwiftUI

struct EntryView: View {
  
  var body: some View {
    VStack {
      NavigationLink(destination: PortalsView()) {
          Text("Go to Portals View")
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
      }
      .buttonStyle(.borderedProminent)
    }
    .padding()
    .navigationTitle("Portals Playground")
  }
  
}

struct EntryView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      EntryView()
    }
  }
}
