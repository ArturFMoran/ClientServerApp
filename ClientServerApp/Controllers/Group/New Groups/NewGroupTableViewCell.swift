//
//  NewGroupTableViewCell.swift
//  ClientServerApp
//
//  Created by Artur Felipe Moran on 24.07.2023.
//

import UIKit

class NewGroupTableViewCell: UITableViewCell {
    
    let groupImage = UIImageView()
    let groupName = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(_ indexPath: IndexPath){
        groupName.text = "Группа #\(indexPath.row + 1)"
        groupImage.image = UIImage(named: "\(arc4random_uniform(UInt32(indexPath.count)) + 1)")
    }
    
    private func clearCell(){
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        clearCell()
    }
    
    private func setupUI(){
        addSubview(groupName)
        addSubview(groupImage)
        
        groupName.translatesAutoresizingMaskIntoConstraints = false
        groupImage.translatesAutoresizingMaskIntoConstraints = false
        groupImage.contentMode = .scaleAspectFill
        
        NSLayoutConstraint.activate([
            groupImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            groupImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            groupImage.heightAnchor.constraint(equalToConstant: 50),
            groupImage.widthAnchor.constraint(equalToConstant: 50),
        
            groupName.leadingAnchor.constraint(equalTo: groupImage.trailingAnchor, constant: 16),
            groupName.centerYAnchor.constraint(equalTo: centerYAnchor),
            groupName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        groupImage.layer.cornerRadius = 25
        groupImage.clipsToBounds = true
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


}
