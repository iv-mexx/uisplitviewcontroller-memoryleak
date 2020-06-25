//
//  DetailViewController.swift
//  SplitViewControllerTest
//
//  Created by Markus Chmelar on 25.06.20.
//  Copyright © 2020 Innovaptor. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  @IBOutlet weak var titleLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.titleLabel.text = self.title
  }
  
  deinit {
    print("Deinit \(self.title) - \(self)")
  }
}
