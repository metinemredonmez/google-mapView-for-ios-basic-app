//
//  ViewController.swift
//  google-maps
//
//  Created by Apple on 17.08.2022.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    @IBOutlet weak var GMSmapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // google maps işlemleri
        
        let camera = GMSCameraPosition.camera(withLatitude: 49.27, longitude: 28.97, zoom: 15)
        
        // enlem boylam harita uzerınden gostermek ıcın
        
        GMSmapView.camera = camera
        
        // marker ekleyelim
        
        let marker = GMSMarker()
        marker.position  = CLLocationCoordinate2D(latitude: 49.27, longitude: 28.97)
        marker.title = "taksim"
        marker.snippet = "taksim alt başlık"

        marker.map =  GMSmapView
    }


}

