//
//  LocationViewController.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-17.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//

import UIKit
import WebKit

class LocationViewController: UIViewController {

    @IBOutlet weak var MyWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
     MyWebView.load(URLRequest(url: URL(string: "https://www.google.ca/maps/place/Parking+Lot+Niagara+Falls/@43.0739537,-79.0799659,17z/data=!4m6!3m5!1s0x89d343a7b2da15f1:0x70d4d7fce52167b9!4b1!8m2!3d43.0739537!4d-79.0777719?hl=en&authuser=0")!))
    
    
    }
    
    @IBAction func btnHomeClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
