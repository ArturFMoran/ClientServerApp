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
    
    //Установка значений ячейки зависимо от номера ячейки
    func setup(_ indexPath: IndexPath){
        avatarImageView.image = UIImage(named: "\(indexPath.row + 1)")
        nameLabel.text = "Друг №\(indexPath.row + 1)"
        idLabel.text = "id\(indexPath.row + 1)"
    }
    
    //Установка значения ячеек "по умолчанию"
    func defaultSetup(_ indexPath: IndexPath){
        if indexPath.row % 2 == 0 {
            avatarImageView.image = UIImage(named: "1")
            nameLabel.text = "Friend"
            idLabel.text = "id\(indexPath.row + 1)"
        }else{
            avatarImageView.image = UIImage(named: "2")
            nameLabel.text = "Another Friend"
            idLabel.text = "id\(indexPath.row + 1)"
        }
    }
    
    //Объединяющий два предыдущих метода (добавил для наглядности, но ему предпочту использовать два предыдущих с помощью тернарного оператора
    func setup(_ image: UIImage?, _ name: String?, _ id: String?, _ indexPath: IndexPath){
        guard let image = image, let name = name, let id = id else {
            if indexPath.row % 2 == 0 {
                avatarImageView.image = UIImage(named: "1")
                nameLabel.text = "Сашка"
                idLabel.text = "id\(indexPath.row + 1)"
            }else{
                avatarImageView.image = UIImage(named: "2")
                nameLabel.text = "Артурка"
                idLabel.text = "id\(indexPath.row + 1)"
            }
            return
        }
        avatarImageView.image = image
        nameLabel.text = name
        idLabel.text = id
    }
 
    //Настройка ячейки, а именно UIImageView + UIView. UIView более гибкий для настроек и используется, как подложка для UIImageView
    func configure(){
        avatarImageView.layer.cornerRadius = 25
        avatarStandImage.layer.cornerRadius = 25
//        avatarStandImage.layer.shadowColor = UIColor.black.cgColor
//        avatarStandImage.layer.shadowRadius = 5
//        avatarStandImage.layer.shadowOpacity = 0.5
//        nameLabel.font = UIFont.systemFont(ofSize: 25)
//        idLabel.font = UIFont.systemFont(ofSize: 15)
//        idLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
    
    //Метод очистки ячейки, который мы поместим в метод переиспользования ячейки
    func clearCell(){
        avatarImageView.image = nil
        nameLabel.text = nil
        idLabel.text = nil
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        clearCell()
    }
   
    //Метод configure() можно использовать как здесь, так и непосредственно в UITableView
    override func awakeFromNib() {
        super.awakeFromNib()
//        configure()
    }
    
}
