//
//  SettingsViewController.swift
//  Caminheiro Fácil
//
//  Created by Rodrigo Gomes Dias on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func logout(_ sender: Any) {
        navigationController?.navigationController?.popToRootViewController(animated: true)
    }
}
