//
//  FriendTableViewCell.swift
//  ClientServerApp
//
//  Created by Artur Felipe Moran on 28.06.2023.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarStandImage: UIView!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatarImageView.layer.cornerRadius = 45
        avatarStandImage.layer.cornerRadius = 45
        avatarStandImage.layer.shadowColor = UIColor.black.cgColor
        avatarStandImage.layer.shadowRadius = 5
        avatarStandImage.layer.shadowOpacity = 0.5
        nameLabel.font = UIFont.systemFont(ofSize: 25)
        idLabel.font = UIFont.systemFont(ofSize: 15)
        idLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
 
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
