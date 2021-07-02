//
//  PhotosViewController.swift
//  FoursquareApp
//
//  Created by Bhoomika H P on 02/07/21.
//

import UIKit

class PhotosViewController: UIViewController {
    
    var photos = [UIImage]()
   
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        // Do any additional setup after loading the view.
    }
    

    @IBAction func addPhotos(_ sender: UIButton) {
        
    }
    

}

extension PhotosViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}
