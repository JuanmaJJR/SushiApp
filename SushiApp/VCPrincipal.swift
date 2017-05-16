//
//  VCPrincipal.swift
//  SushiApp
//
//  Created by JUAN MARÍA JUSUE ROYAN on 16/5/17.
//  Copyright © 2017 JUAN MARÍA JUSUE ROYAN. All rights reserved.
//

import UIKit

class VCPrincipal: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var tbMiTable:UITableView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TVCMiCelda = tableView.dequeueReusableCell(withIdentifier: "micelda1") as! TVCMiCelda
        //cell.lblNombre?.text=""
        if(indexPath.row==0){
            cell.lblNombre?.setTitle("Maki", for: UIControlState.normal)
            //cell.imagn?.image=UIImage(named:"Image.png")
        }
        if(indexPath.row==1){
            cell.lblNombre?.setTitle("Uramaki", for: UIControlState.normal)
           // cell.imagn?.image=UIImage(named:"Image-1.png")
        }
        if(indexPath.row==2){
            cell.lblNombre?.setTitle("Temaki", for: UIControlState.normal)
            //cell.imagn?.image=UIImage(named:"descarga.png")
        }
        if(indexPath.row==3){
            cell.lblNombre?.setTitle("Nigiri", for: UIControlState.normal)
            //cell.imagn?.image=UIImage(named:"c.png")
        }
        if(indexPath.row==4){
            cell.lblNombre?.setTitle("Gunkan", for: UIControlState.normal)
            //cell.imagn?.image=UIImage(named:"scala-logo.png")
        }
        if(indexPath.row==5){
            cell.lblNombre?.setTitle("Inari", for: UIControlState.normal)
            //cell.imagn?.image=UIImage(named:"scala-logo.png")
        }
        if(indexPath.row==6){
            cell.lblNombre?.setTitle("Oshi", for: UIControlState.normal)
            //cell.imagn?.image=UIImage(named:"scala-logo.png")
        }
        if(indexPath.row==7){
            cell.lblNombre?.setTitle("Chirasi", for: UIControlState.normal)
            //cell.imagn?.image=UIImage(named:"scala-logo.png")
        }
        return cell
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
