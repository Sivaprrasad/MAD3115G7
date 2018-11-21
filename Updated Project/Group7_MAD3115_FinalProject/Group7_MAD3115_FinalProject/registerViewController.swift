//
//  registerViewController.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-20.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//

import UIKit

class registerViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtName.text = ""
        txtEmail.text = ""
        txtPassword.text = ""

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        txtName.text = ""
        txtEmail.text = ""
        txtPassword.text = ""
    }
    
    
    @IBAction func btnSubmit(_ sender: UIButton) {
        var data : String = txtName.text!
        data += "\n" + txtPassword.text!
        data += "\n" + txtEmail.text!
        let ud =  UserDefaults.standard
        ud.set(txtEmail.text, forKey: "userEmail")
        ud.set(txtPassword.text, forKey: "Password")
        ud.set(txtName.text, forKey: "userName")
        let infoAlert = UIAlertController(title: "Confirm details", message: data, preferredStyle: .alert)
        infoAlert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: {_ in self.displayHomeVC()}))
        infoAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(infoAlert, animated: true, completion: nil)
        
    }
    func displayHomeVC(){
        let newUser = Person(txtName.text!, txtEmail.text!, txtPassword.text!)
        
        if Person.addUser(newUser: newUser){
            let act = (storyboard?.instantiateViewController(withIdentifier: "LoginView"))
            self.present(act!, animated: true, completion: nil)
        }
        else{
            let infoAlert = UIAlertController(title: "Unsuccessful", message: "Account Creation Unsuccessful", preferredStyle: .alert)
            infoAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(infoAlert, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func btnLogin(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }

}
