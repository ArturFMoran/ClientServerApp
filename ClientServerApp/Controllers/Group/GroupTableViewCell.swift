//
//  GroupTableViewCell.swift
//  ClientServerApp
//
//  Created by Artur Felipe Moran on 17.07.2023.
//

import UIKit

class GroupTableViewCell: UITableViewCell {
    
    let groupName = UILabel()
    let groupImage = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(_ indexPath: IndexPath){
        groupName.text = "Моя группа №\(indexPath.row + 1)"
        groupImage.image = UIImage(named: String(arc4random_uniform(10) + 1))
    }
    
    private func setupUI() {
        // Элементы интерфейса
        addSubview(groupName)
        addSubview(groupImage)
        
        
        groupName.translatesAutoresizingMaskIntoConstraints = false
        groupImage.translatesAutoresizingMaskIntoConstraints = false
        groupImage.contentMode = .scaleAspectFill
        
        //Констрейнты
        NSLayoutConstraint.activate([
            groupImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            groupImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            groupImage.widthAnchor.constraint(equalToConstant: 50),
            groupImage.heightAnchor.constraint(equalToConstant: 50),

            groupName.leadingAnchor.constraint(equalTo: groupImage.trailingAnchor, constant: 16),
            groupName.centerYAnchor.constraint(equalTo: centerYAnchor),
            groupName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        groupImage.layer.cornerRadius = 25
        groupImage.clipsToBounds = true
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
