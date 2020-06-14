//
//  ActionsViewController.swift
//  CaminheiroFacil
//
//  Created by Rodrigo Gomes Dias on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class ActionsViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.init(red: 218/255, green: 218/255, blue: 218/255, alpha: 1).cgColor
        
    }

    @IBAction func close(_ sender: Any) {
        dismiss(animated: true)
    }
}
