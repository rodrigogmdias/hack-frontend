//
//  Button.swift
//  CaminheiroFacil
//
//  Created by Rodrigo Gomes Dias on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class Button: UIButton {
    
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 15
        layer.borderColor = UIColor.init(red: 235/255, green: 235/255, blue: 235/255, alpha: 1).cgColor
        layer.borderWidth = 1
    }
    
}
