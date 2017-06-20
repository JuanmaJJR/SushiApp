//
//  VCMapa.swift
//  Actividad1-JM
//
//  Created by JUAN MARÍA JUSUE ROYAN on 20/4/17.
//  Copyright © 2017 JUAN MARÍA JUSUE ROYAN. All rights reserved.
//

import UIKit
import MapKit
import Firebase
import FirebaseDatabase

class VCMapa: UIViewController, MKMapViewDelegate{
    @IBOutlet var miMapa:MKMapView?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bb.jpg")!)
        // Do any additional setup after loading the view.
        
        
        miMapa?.showsUserLocation = true
        
        let refHandle = DataHolder.sharedInstance.firDataBaseRef.child("restaurantes").observe(DataEventType.value, with: { (snapshot) in
                let arTemp=snapshot.value as? Array<AnyObject>
                
                //if(DataHolder.sharedInstance.arUsuarios==nil){
                DataHolder.sharedInstance.arUsuarios=Array<restaurantes>()
                //}
                
                for co in arTemp! as [AnyObject]{
                    
                    let restaurantesi=restaurantes(valores: co as! [String:AnyObject])
                    DataHolder.sharedInstance.arUsuarios?.append(restaurantesi)
                    var coordTemp:CLLocationCoordinate2D = CLLocationCoordinate2D()
                    coordTemp.latitude = restaurantesi.fLat!
                    coordTemp.longitude = restaurantesi.fLon!
                    self.agregarPin(coordenada: coordTemp, titulo: restaurantesi.sNombre!, valora: restaurantesi.sVa!)
                    
                }
                
                
            })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func agregarPin(coordenada:CLLocationCoordinate2D, titulo varTitulo:String, valora varVa:String){
        let annotation:MKPointAnnotation = MKPointAnnotation()
        annotation.coordinate = coordenada
        annotation.title = varTitulo
        annotation.subtitle = varVa;
        miMapa?.addAnnotation(annotation)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

