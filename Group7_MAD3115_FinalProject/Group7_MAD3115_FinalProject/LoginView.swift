//
//  ViewController.swift
//  Parking Space Booking System
//
//  Created by  Z Angrazy Jatt on 2018-11-03.
//  Copyright © 2018  Z Angrazy Jatt. All rights reserved.
//

import UIKit


class LoginView: UIViewController {
    
   

    @IBOutlet weak var EmailTextArea: UITextField!
    @IBOutlet weak var PasswordTextArea: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func LoginButton(_ sender: UIButton) {
        
        let userEmail = EmailTextArea.text
        let userPassword = PasswordTextArea.text
        let userEmailStored = "a@a.com" //UserDefaults.standard.string(forKey: "userEmail")
        let userPasswordStored = "a"//UserDefaults.standard.string(forKey: "userPassword")
        
        
        if(userEmailStored == userEmail )
        {
            if(userPasswordStored == userPassword)
            {
                
                UserDefaults.standard.set(true,forKey: "isUserLoggedIn")
                UserDefaults.standard.synchronize()
                // self.dismiss(animated: true, completion: nil)
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let nextScreen = sb.instantiateViewController(withIdentifier: "HomeViewController")
                self.present(nextScreen, animated: true, completion: nil)
                
                
                
                
            }
        }
        
        if(userEmail!.isEmpty || userPassword!.isEmpty)
        {
            disPlayAlertMessage(userMessage: "All Fields are required");
            return
        }
        
        if(userEmailStored != userEmail )
        {
            
                disPlayAlertMessage(userMessage: "You entered an wrong field(username)")
            
        }
        if(userPasswordStored != userPassword)
        {
            disPlayAlertMessage(userMessage: "You entered an wrong field(password)")
        }
        
      }
    
    
    @IBAction func ExitClicked(_ sender: UIButton) {
        UIControl().sendAction(#selector(NSXPCConnection.suspend), to: UIApplication.shared, for: nil)
    }
    
    func  disPlayAlertMessage(userMessage: String)
    {
        let myAlert = UIAlertController(title: "excuse Us!", message: userMessage, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true,completion: nil)
    }
    
    
}

