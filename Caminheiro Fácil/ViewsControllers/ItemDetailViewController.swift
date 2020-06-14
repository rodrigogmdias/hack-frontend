//
//  ItemDetailViewController.swift
//  CaminheiroFacil
//
//  Created by Rodrigo Gomes Dias on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit
import SDWebImage
import FirebaseFirestore

class ItemDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var item: DocumentSnapshot? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let title = item!["title"] as? String {
            titleLabel.text = title
        }
        if let image = item!["image"] as? String {
            imageView.sd_setImage(with: URL(string: image))
        }
        if let description = item!["description"] as? String {
            descriptionLabel.text = description
        }
    }

    @IBAction func back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
