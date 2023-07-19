//
//  GroupsTableViewController.swift
//  ClientServerApp
//
//  Created by Artur Felipe Moran on 22.06.2023.
//

import UIKit

private let cellIdentifier = "groupCell"

class GroupsTableViewController: UITableViewController {
      
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My Groups"
        self.tableView.register(GroupTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 20
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! GroupTableViewCell

        cell.setup(indexPath)

        return cell
    }


}
