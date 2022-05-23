//
//  ImageCollectionViewController.swift
//  PracticeSwift
//
//  Created by emil kurbanov on 23.05.2022.
//

import UIKit
class ImageCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let arrayImage: [UIImage?] = [UIImage(named: "1"),UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ImageCollectionViewCell else { return UICollectionViewCell() }
        
        cell.imageName.image = arrayImage[indexPath.row]
        return cell
    }
    
    
}

