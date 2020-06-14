//
//  HealthViewController.swift
//  CaminheiroFacil
//
//  Created by Rodrigo Gomes Dias on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit
import FirebaseFirestore

class HealthViewController: UIViewController {
    
    @IBOutlet weak var healthCollectionView: UICollectionView!
    
    var healthData: [DocumentSnapshot] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let db = Firestore.firestore()
        
        db.collection("saude").getDocuments { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                self.healthData = querySnapshot!.documents
                self.healthCollectionView.reloadData()
            }
        }
    }
    
}

extension HealthViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return healthData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data = healthData
        
        let reuseName = "saude"
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseName, for: indexPath) as! HomeCardCollectionViewCell
        
        cell.layer.cornerRadius = 10
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.init(red: 234/255, green: 234/255, blue: 234/255, alpha: 1).cgColor
        
        cell.setup(model: data[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let data = healthData
        let item = data[indexPath.row]
        
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let view = sb.instantiateViewController(identifier: "homeDetail") as! ItemDetailViewController
        view.item = item
        
        navigationController?.pushViewController(view, animated: true)
    }
    
}
