//
//  MapViewController.swift
//  Isaac_rm97847_mod
//
//  Created by Usuário Convidado on 16/11/26.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let lati = 48.858222
    let long = 2.294500
    override func viewDidLoad() {
        super.viewDidLoad()

        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: lati, longitude: long)
        annotation.title = "Torre Eiffel, area com bastante movimento perigo mediano"
        annotation.subtitle = "Analisa á area em busca de novas informaçoes de acontecimentos perigosos, areas de risco, pessoas perigosas e cuidados para se ter ao passear por essa area .Beleza única e arquitetura histórica, mas com perigos reais de furtos e ventos fortes no topo."
        mapView.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 250, longitudinalMeters: 250)
        mapView.setRegion(region, animated: true)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
