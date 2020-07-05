//
//  ImageCollectionViewCell.swift
//  Gallery
//
//  Created by Lucas Krejci Ferreira on 04/07/20.
//  Copyright © 2020 Lucas Krejci Ferreira. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!

    func setImage(_ image: UIImage) {
        self.imageView.image = image
    }
}
