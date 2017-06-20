//
//  login.swift
//  SushiApp
//
//  Created by JUAN MARÍA JUSUE ROYAN on 15/6/17.
//  Copyright © 2017 JUAN MARÍA JUSUE ROYAN. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class login: UIViewController {
    @IBOutlet var nameTextField: UITextField?
    @IBOutlet var passTextField: UITextField?
    @IBOutlet weak var lblError: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        lblError?.text = ""
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bb.jpg")!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func LoginButton() {
        if (nameTextField?.text == "" && passTextField?.text == ""){
            lblError?.text="Introduce un usuario y una contraseña"
        }
        
        Auth.auth().signIn(withEmail: (nameTextField?.text)!, password: (passTextField?.text)!){(user, error) in
            
            
            if(error==nil){
                self.performSegue(withIdentifier:"tran1", sender: self)
                
            }
            else{
                print("--->>>>",error!)
                
            }
        }

}
}
