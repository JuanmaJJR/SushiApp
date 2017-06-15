//
//  VCRegistroViewController.swift
//  SushiApp
//
//  Created by JUAN MARÍA JUSUE ROYAN on 15/6/17.
//  Copyright © 2017 JUAN MARÍA JUSUE ROYAN. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class VCRegistroViewController: UIViewController {
    
    var name = ""
    var pass = ""
    
    @IBOutlet var uss: UITextField?
    @IBOutlet var psw: UITextField?
    @IBOutlet var psswd: UITextField?
    @IBOutlet var psswd2: UITextField?
    @IBOutlet var mail: UITextField?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bb.jpg")!)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    @IBAction func btnSingUp(_ sender: UIButton) {
        
        if (psswd?.text != psswd2?.text){
            
            let AlertaError : UIAlertController = UIAlertController(title: "Error", message: "Has introducido mal las contraseñas", preferredStyle: .actionSheet)
            
            let AlertaErrorOK : UIAlertAction = UIAlertAction(title: "Ok", style: .destructive, handler: nil)
            
            AlertaError.addAction(AlertaErrorOK)
            
            present(AlertaError, animated: true, completion: nil)
            
        }
        else{
            Auth.auth().createUser(withEmail: (mail?.text)!, password: (psswd?.text)!) { (user, error) in
                
                if(error==nil){
                    
                }
                else{
                    print("--->>>>",error!)
                    
                }
                
                
            }
        }
        
    }
}
