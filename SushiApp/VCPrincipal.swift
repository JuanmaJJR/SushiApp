//
//  VCPrincipal.swift
//  SushiApp
//
//  Created by JUAN MARÍA JUSUE ROYAN on 16/5/17.
//  Copyright © 2017 JUAN MARÍA JUSUE ROYAN. All rights reserved.
//

import UIKit

class VCPrincipal: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var TbMitb:UITableView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TVCMiCelda = tableView.dequeueReusableCell(withIdentifier: "micelda1") as! TVCMiCelda
        //cell.lblNombre?.text=""
        if(indexPath.row==0){
            cell.btnNombre!.setTitle("Maki", for: .normal)
            cell.btnNombre!.setImage(#imageLiteral(resourceName: "maki"), for: .normal)
            //cell.imagn?.image=UIImage(named:"Image.png")
        }
        if(indexPath.row==1){
            cell.btnNombre?.setTitle("Uramaki", for: UIControlState.normal)
           // cell.imagn?.image=UIImage(named:"Image-1.png")
        }
        if(indexPath.row==2){
            cell.btnNombre?.setTitle("Temaki", for: UIControlState.normal)
            //cell.imagn?.image=UIImage(named:"descarga.png")
        }
        if(indexPath.row==3){
            cell.btnNombre?.setTitle("Nigiri", for: UIControlState.normal)
            //cell.imagn?.image=UIImage(named:"c.png")
        }
        if(indexPath.row==4){
            cell.btnNombre?.setTitle("Gunkan", for: UIControlState.normal)
            //cell.imagn?.image=UIImage(named:"scala-logo.png")
        }
        if(indexPath.row==5){
            cell.btnNombre?.setTitle("Inari", for: UIControlState.normal)
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
