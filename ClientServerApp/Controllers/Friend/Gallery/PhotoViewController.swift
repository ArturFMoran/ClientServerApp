//
//  PhotoViewController.swift
//  ClientServerApp
//
//  Created by Artur Felipe Moran on 19.07.2023.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    var photo: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = photo
    }
    

}
