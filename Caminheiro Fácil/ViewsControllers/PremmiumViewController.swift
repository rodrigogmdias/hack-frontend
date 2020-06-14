//
//  PremmiumViewController.swift
//  CaminheiroFacil
//
//  Created by Rodrigo Gomes Dias on 14/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit

class PremmiumViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var discountCollectionView: UICollectionView!
    @IBOutlet weak var promotionCollectionView: UICollectionView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNeedsStatusBarAppearanceUpdate()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let gradient = CAGradientLayer()

        gradient.frame = backgroundView.bounds
        gradient.colors = [UIColor.black.cgColor,
                           UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 1).cgColor]
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)

        backgroundView.layer.insertSublayer(gradient, at: 0)
    }

    @IBAction func openCamera(_ sender: Any) {
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let view = sb.instantiateViewController(identifier: "qr_code")
        view.modalPresentationStyle = .overFullScreen
        view.modalTransitionStyle = .crossDissolve
        tabBarController?.present(view, animated: true)
    }
}

extension PremmiumViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var identifier: String
        
        if collectionView == discountCollectionView {
            identifier = "discount"
        } else if collectionView == categoryCollectionView {
            identifier = "category"
        } else {
            identifier = "promotion"
        }
        
        let view = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 4
        view.layer.borderColor = UIColor(red: 42/255, green: 42/255, blue: 42/255, alpha: 1).cgColor
        
        return view
    }
}
