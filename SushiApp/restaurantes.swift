//
//  Usuario.swift
//  Actividad1-JM
//
//  Created by JUAN MARÍA JUSUE ROYAN on 20/4/17.
//  Copyright © 2017 JUAN MARÍA JUSUE ROYAN. All rights reserved.
//

import UIKit

class restaurantes: NSObject {
    var sVa:String?
    var sNombre:String?
    var sApellidos:String?
    var sRutaImagenP:String?
    var fLon:Double?
    var fLat:Double?
    
    init(valores:[String:AnyObject]) {
        sNombre=valores["Nombre"] as? String
        sVa=valores["valoracion"] as? String
        fLon=valores ["lon"] as? Double
        fLat=valores ["lat"] as? Double
    }

}
