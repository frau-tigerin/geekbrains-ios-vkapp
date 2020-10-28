//
//  MyGroupsTableViewController.swift
//  VKApp
//
//  Created by Valerie Solovyova on 19.10.2020.
//  Copyright © 2020 Valerie Solovyova. All rights reserved.
//

import UIKit

class MyGroupsTableViewController: UITableViewController {

    var groups: [String] = []
    
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
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    @IBAction func unwindFromAllGroups(_ sender: UIStoryboardSegue) {
        guard
            let controller = sender.source as? AllGroupsTableViewController,
            let indexPath = controller.tableView.indexPathForSelectedRow
            else { return }
        
        let group = controller.groups[indexPath.row]
        
        if groups.contains(group) {
            return
        }
        
        groups.append(group)
        tableView.reloadData()
    }
}
