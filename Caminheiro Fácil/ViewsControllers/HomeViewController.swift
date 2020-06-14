//
//  HomeViewController.swift
//  Caminheiro Fácil
//
//  Created by Rodrigo Gomes Dias on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore
import SDWebImage

class HomeViewController: UIViewController {

    @IBOutlet weak var restCollectionView: UICollectionView!
    @IBOutlet weak var healthCollectionView: UICollectionView!
    
    var placeData: [DocumentSnapshot] = []
    var healthData: [DocumentSnapshot] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let db = Firestore.firestore()
        
        db.collection("place").getDocuments { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                self.placeData = querySnapshot!.documents
                self.restCollectionView.reloadData()
            }
        }
        
        db.collection("health").getDocuments { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                self.healthData = querySnapshot!.documents
                self.healthCollectionView.reloadData()
            }
        }
    }
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == restCollectionView {
            return placeData.count
        } else {
            return healthData.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data = collectionView == restCollectionView ? placeData : healthData
        
        let reuseName = collectionView.tag == 0 ? "home" : "saude"
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseName, for: indexPath) as! HomeCardCollectionViewCell
        
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.init(red: 234/255, green: 234/255, blue: 234/255, alpha: 1).cgColor
        
        cell.setup(model: data[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let data = collectionView == restCollectionView ? placeData : healthData
        let item = data[indexPath.row]
        
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let view = sb.instantiateViewController(identifier: "homeDetail") as! ItemDetailViewController
        view.item = item
        
        navigationController?.pushViewController(view, animated: true)
    }
    
}
