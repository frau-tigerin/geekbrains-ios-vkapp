//
//  MyFriendsTableViewController.swift
//  VKApp
//
//  Created by Valerie Solovyova on 19.10.2020.
//  Copyright © 2020 Valerie Solovyova. All rights reserved.
//

import UIKit

class MyFriendsTableViewController: UITableViewController {
    
    let items: [MyFriend] = MyFriend.randomMany

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            let controller = segue.destination as? FriendsCollectionViewController,
            let indexPath = tableView.indexPathForSelectedRow
            else { return }
        
        let item = items[indexPath.row]
        controller.photos = item.photos
        controller.title = item.name
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath)
        
        let item = items[indexPath.row]
        cell.textLabel?.text = item.name
        cell.imageView?.image = UIImage(named: "Avatars/\(item.avatar)")
        
        return cell
    }

}
