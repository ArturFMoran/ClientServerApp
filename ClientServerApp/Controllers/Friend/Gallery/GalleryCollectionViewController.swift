//
//  GalleryCollectionViewController.swift
//  ClientServerApp
//
//  Created by Artur Felipe Moran on 19.07.2023.
//

import UIKit

private let cellIdentifier = "galleryCell"
private let cellName = "GalleryCollectionViewCell"
private let photoViewIdentifier = "PhotoViewController"

class GalleryCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Gallery"
        self.collectionView!.register(UINib(nibName: cellName, bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 9
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! GalleryCollectionViewCell
    
        cell.setup(indexPath)
    
        return cell
    }
    
    
    func showPhotoViewController(indexPath item: Int) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let photoVC = storyboard.instantiateViewController(identifier: photoViewIdentifier) as! PhotoViewController
        photoVC.photo = UIImage(named: "\(item + 1)")
        navigationController?.pushViewController(photoVC, animated: true)
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        showPhotoViewController(indexPath: indexPath.item)
    }
    
    
}




//estimate size - none
extension GalleryCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 1.0 // отступ горизонтальный
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 1.0 // вертикальный отступ
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenWidth = collectionView.frame.width
        let cellSize = (screenWidth - 2) / 3 
        return CGSize(width: cellSize, height: cellSize)
    }
}
