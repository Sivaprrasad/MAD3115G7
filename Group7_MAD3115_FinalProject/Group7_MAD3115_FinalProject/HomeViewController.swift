//
//  HomeViewController.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-17.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnProfileClicked(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = sb.instantiateViewController(withIdentifier: "LoginView")
        self.present(nextScreen, animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func btnParkingPaymentReceiptClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func LogoutButtonClicked(_ sender: UIButton) {
        
        
        
        UserDefaults.standard.set(false, forKey: "isUserLoggedIn")
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = sb.instantiateViewController(withIdentifier: "LoginView")
        self.present(nextScreen, animated: true, completion: nil)
    }

}
