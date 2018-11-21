//
//  ParkingManualsViewController.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-17.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//

import UIKit
import WebKit

class ParkingManualsViewController: UIViewController {

    @IBOutlet weak var MyWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFromFile()

        // Do any additional setup after loading the view.
    }
    

    func loadFromFile()
    {
        let localfilePath = Bundle.main.url(forResource: "help", withExtension: "html");
        let myRequest = URLRequest(url: localfilePath!);
        self.MyWebView.load(myRequest);
    }

    @IBAction func btnBackClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
