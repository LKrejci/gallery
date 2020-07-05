//
//  ViewController.swift
//  Gallery
//
//  Created by Lucas Krejci Ferreira on 04/07/20.
//  Copyright © 2020 Lucas Krejci Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageColletionView: UICollectionView!
    
//    var imageList = ([
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let request = GalleryRequest()
        
        request.getCatImage()
        
        configCollectioView()
        imageColletionView.reloadData()
    }
    
    func configCollectioView() {
        imageColletionView.register(ImageCollectionViewCell.nib(), forCellWithReuseIdentifier: ImageCollectionViewCell.identifier)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCollectionViewCell.identifier, for: indexPath) as! ImageCollectionViewCell
        
//        cell.setImage(imageList[indexPath.row])
        return cell
    }
}
