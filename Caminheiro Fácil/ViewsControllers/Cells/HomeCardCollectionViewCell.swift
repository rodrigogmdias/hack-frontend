//
//  HomeCardCollectionViewCell.swift
//  CaminheiroFacil
//
//  Created by Rodrigo Gomes Dias on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit
import FirebaseFirestore
import SDWebImage

class HomeCardCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func setup(model: DocumentSnapshot) {
        if let title = model["title"] as? String {
            titleLabel.text = title
        }
        
        if let image = model["image"] as? String {
            imageView.sd_setImage(with: URL(string: image))
        }
    }
}
