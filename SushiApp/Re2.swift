//
//  Re2.swift
//  SushiApp
//
//  Created by JUAN MARÍA JUSUE ROYAN on 15/6/17.
//  Copyright © 2017 JUAN MARÍA JUSUE ROYAN. All rights reserved.
//

import UIKit

class Re2: UIViewController {
    @IBOutlet internal var ScrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        ScrollView.contentSize.height = 2500
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

}
