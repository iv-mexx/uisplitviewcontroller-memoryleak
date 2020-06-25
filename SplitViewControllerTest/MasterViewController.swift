//
//  MasterViewController.swift
//  SplitViewControllerTest
//
//  Created by Markus Chmelar on 25.06.20.
//  Copyright © 2020 Innovaptor. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let navigation = segue.destination as? UINavigationController,
      let detail = navigation.topViewController as? DetailViewController,
      let indexPath = sender as? IndexPath {
      detail.title = "Detail \(indexPath.row + 1)"
    }
  }

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.performSegue(withIdentifier: "showDetail", sender: indexPath)
  }
}
