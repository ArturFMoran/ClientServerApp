//
//  FriendsViewController.swift
//  ClientServerApp
//
//  Created by Artur Felipe Moran on 28.06.2023.
//

import UIKit

class FriendsViewController: UIViewController {
    let cellIndentifier = "friendCell"
    let friednNibName = "FriendTableViewCell"
    let fromListToProfileSegue = "fromListToProfile"
    
    @IBOutlet weak var friendsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.friendsTableView.register(UINib(nibName: friednNibName, bundle: nil), forCellReuseIdentifier: cellIndentifier)
        
        friendsTableView.dataSource = self
        friendsTableView.delegate = self
    }
    


}

extension FriendsViewController: UITableViewDataSource, UITableViewDelegate {

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath) as! FriendTableViewCell
        
        cell.avatarImageView.image = UIImage(named: "1")
        cell.nameLabel.text = "Friend"
        cell.idLabel.text = "id1"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: fromListToProfileSegue, sender: nil)
        print(indexPath.row)
    }
    
}
