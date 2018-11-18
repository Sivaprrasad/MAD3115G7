//
//  SupportViewController.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-17.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//

import UIKit

class SupportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
// Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        showAlert()
    }
    @IBAction func btnHomeClicked(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let nextScreen = sb.instantiateViewController(withIdentifier: "HomeViewController")
        self.present(nextScreen, animated: true, completion: nil)
    }
    
    func showAlert(){
        let attributedString = NSAttributedString(string: "+1 416-485-2098                                             9:00 AM - 9:00 PM                                             Email: LambtonInToronto@cestarcollege.com", attributes: [NSAttributedString.Key.font : UIFont(name: "Avenir-Light", size: 14)!])
        let alert = UIAlertController(title: "We Support You", message: "Contact us! as below", preferredStyle: UIAlertController.Style.alert)
        alert.setValue(attributedString, forKey: "attributedMessage")
        let alertAction = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default)
        {
            (UIAlertAction) -> Void in
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
        {
            () -> Void in
        }
    }


}
