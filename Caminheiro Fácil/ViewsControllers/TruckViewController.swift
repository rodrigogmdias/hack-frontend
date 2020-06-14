//
//  TruckViewController.swift
//  CaminheiroFacil
//
//  Created by Rodrigo Gomes Dias on 13/06/20.
//  Copyright © 2020 CCR. All rights reserved.
//

import UIKit
import GoogleMaps

class TruckViewController: UIViewController {

    @IBOutlet weak var mapViewContent: UIView!
    
    var locationManager = CLLocationManager()
    var mapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 15.0)
        mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        mapView.isMyLocationEnabled = true
        
        if let mylocation = mapView.myLocation {
          print("User's location: \(mylocation)")
        } else {
          print("User's location is unknown")
        }
        
        self.mapViewContent.addSubview(mapView)
        
        self.locationManager.delegate = self
        self.locationManager.startUpdatingLocation()
    }
    
    @IBAction func openActions(_ sender: Any) {
        
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let view = sb.instantiateViewController(identifier: "actions")
        view.modalPresentationStyle = .overFullScreen
        view.modalTransitionStyle = .crossDissolve
        tabBarController?.present(view, animated: true)
    }
}

extension TruckViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last
        
        let camera = GMSCameraPosition.camera(withLatitude: (location?.coordinate.latitude)!, longitude: (location?.coordinate.longitude)!, zoom: 17.0)
        
        self.mapView?.animate(to: camera)
    
        self.locationManager.stopUpdatingLocation()
    }
}
