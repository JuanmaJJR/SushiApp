//
//  DataHolder.swift
//  Actividad1-JM
//
//  Created by JUAN MARÍA JUSUE ROYAN on 28/3/17.
//  Copyright © 2017 JUAN MARÍA JUSUE ROYAN. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseStorage

class DataHolder: NSObject {
    static let sharedInstance:DataHolder=DataHolder()
    var Usuario:String?
    var Pass:String?
    var firDataBaseRef: DatabaseReference!
    var firStorage:Storage?
    var arUsuarios:Array<restaurantes>!
    var firStorageRef:StorageReference!
    
    override init (){
        
    }
    func initFirebase(){
        FirebaseApp.configure()
        firDataBaseRef=Database.database().reference()
        firStorage = Storage.storage()
        firStorageRef = (firStorage?.reference())!
    }
}
