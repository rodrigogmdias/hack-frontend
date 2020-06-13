//
//  HomeViewController.swift
//  Caminheiro Fácil
//
//  Created by Rodrigo Gomes Dias on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var restCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let reuseName = collectionView.tag == 0 ? "home" : "saude"
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseName, for: indexPath)
        
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.init(red: 234/255, green: 234/255, blue: 234/255, alpha: 1).cgColor
        
        return cell
    }
    
}
