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
    
    let identifier = "ImageCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configCollectioView()
        imageColletionView.reloadData()
    }
    
    func configCollectioView() {
        imageColletionView.register(ImageCollectionViewCell.self, forCellWithReuseIdentifier: identifier)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! ImageCollectionViewCell
        
        
        return cell
    }
}
