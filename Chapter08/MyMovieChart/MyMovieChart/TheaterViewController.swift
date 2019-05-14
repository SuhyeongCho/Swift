//
//  TheaterViewController.swift
//  MyMovieChart
//
//  Created by 조수형 on 14/05/2019.
//  Copyright © 2019 조수형. All rights reserved.
//

import UIKit
import MapKit

class TheaterViewController: UIViewController {
    
    var param: NSDictionary!
    
    @IBOutlet var map: MKMapView!
    
    override func viewDidLoad() {
        self.navigationItem.title = self.param["영화관명"] as? String
        
        let lat = (param?["위도"] as! NSString).doubleValue
        let lng = (param?["경도"] as! NSString).doubleValue

        
        let location = CLLocationCoordinate2D(latitude: lat, longitude: lng)
        
        let regionRadius : CLLocationDistance = 100
        let coordinateRegion = MKCoordinateRegion.init(center: location, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        
        self.map.setRegion(coordinateRegion, animated: true)
        
        let point = MKPointAnnotation()
        point.coordinate = location
        
        self.map.addAnnotation(point)
        
    }
}
