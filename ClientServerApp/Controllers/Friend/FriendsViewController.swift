//
//  FriendsViewController.swift
//  ClientServerApp
//
//  Created by Artur Felipe Moran on 28.06.2023.
//

import UIKit

<<<<<<< HEAD
private let cellIndentifier = "friendCell"
private let friednNibName = "FriendTableViewCell"
private let fromListToProfileSegue = "fromListToProfile"

class FriendsViewController: UIViewController {
    
=======
class FriendsViewController: UIViewController {
    let cellIndentifier = "friendCell"
    let friednNibName = "FriendTableViewCell"
    let fromListToProfileSegue = "fromListToProfile"
>>>>>>> a13f2eda74322ede95622fb1f879659e95ea8a7e
    
    @IBOutlet weak var friendsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
<<<<<<< HEAD
        
        self.title = "My Friends"
=======

>>>>>>> a13f2eda74322ede95622fb1f879659e95ea8a7e
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
        return 15
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath) as! FriendTableViewCell
        cell.configure()
        
//        cell.setup(indexPath)
//        cell.defaultSetup(indexPath)
        indexPath.row + 1 <= 10 ? cell.setup(indexPath) : cell.defaultSetup(indexPath)
//        cell.setup(UIImage(named: "\(indexPath.row + 1)"), "Друг №\(indexPath.row + 1)", "id\(indexPath.row + 1)", indexPath)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: fromListToProfileSegue, sender: nil)
        print(indexPath.row)
    }
    
}
