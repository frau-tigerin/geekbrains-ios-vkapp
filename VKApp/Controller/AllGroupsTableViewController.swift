//
//  AllGroupsTableViewController.swift
//  VKApp
//
//  Created by Valerie Solovyova on 19.10.2020.
//  Copyright © 2020 Valerie Solovyova. All rights reserved.
//

import UIKit

class AllGroupsTableViewController: UITableViewController {

    let groups: [String] = [
        "Music",
        "Films",
        "TV-Shows",
        "Cat Lovers",
        "Dog Owners"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsCell", for: indexPath)
            as! GroupCell
        let group = groups[indexPath.row]
        cell.groupTitleLabel.text = group
        
        return cell
    }
}
