//
//  GalleryCollectionViewCell.swift
//  ClientServerApp
//
//  Created by Artur Felipe Moran on 19.07.2023.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var galleryImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setup(_ indexPath: IndexPath) {
        galleryImageView.image = UIImage(named: "\(indexPath.item + 1)")
    }
    
    func clearCell(){
        galleryImageView.image = nil
    }
    
//    func configure() {
//        
//    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        clearCell()
    }
}
