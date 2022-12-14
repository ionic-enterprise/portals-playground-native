//
//  PortalsViewController.swift
//  Portals Playground
//
//  Created by Eric Horodyski on 12/14/22.
//

import UIKit
import IonicPortals

extension Portal {
  static let playground = Self(
    name: "playground",
    startDir: "portals/playground"
  )
}

class PortalsViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Portals"
    navigationItem.largeTitleDisplayMode = .never
  }
  
  override func loadView() {
    self.view = PortalUIView(portal: .playground)
  }
  
}
