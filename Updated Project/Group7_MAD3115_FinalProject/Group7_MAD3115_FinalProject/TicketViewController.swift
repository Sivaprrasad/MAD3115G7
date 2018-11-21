//
//  TicketViewController.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-17.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//

import UIKit

class TicketViewController: UIViewController {

   
    @IBOutlet weak var txtUserEmail: UITextField!
    @IBOutlet weak var txtCpn: UITextField!
    @IBOutlet weak var txtVehicleCompany: UITextField!
   
    
    @IBOutlet weak var txtDateTime: UITextField!
    @IBOutlet weak var txtlotNumber: UITextField!
    @IBOutlet weak var txtSpotNumber: UITextField!
    @IBOutlet weak var txtPaymentMethod: UITextField!
    
    @IBOutlet weak var txtAmount: UITextField!
    @IBOutlet weak var lblCountryName: UILabel!
    
    @IBOutlet weak var txtCarColor: UITextField!
    
   
    
    
    
    

    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
       
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:SS"
        let result = formatter.string(from: date)
        //txtDateTime.text = result
        
        txtUserEmail.text = UserDefaults.standard.string(forKey: "userEmail")
        txtCpn.text = ""
        txtVehicleCompany.text = ""
        txtDateTime.text = result
        txtlotNumber.text = ""
        txtSpotNumber.text = ""
        txtPaymentMethod.text = ""
        txtAmount.text = ""
        txtCarColor.text = ""


        // Do any additional setup after loading the view.
        for (key, value) in UserDefaults.standard.dictionaryRepresentation() {
        print("\(key) = \(value) \n")
         }
    }
    override func viewWillAppear(_ animated: Bool)
    {
    }
    
    func viewTapped(gestureRecognizer:UITapGestureRecognizer )
    {
      view.endEditing(true)
    }
    
    @IBAction func btcCancekClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
   
    @IBAction func btnSegmentPayment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0
        {
            txtPaymentMethod.text = "Debit Card";
        }
        else if sender.selectedSegmentIndex == 1
        {
            txtPaymentMethod.text = "Visa";
        }
        else if sender.selectedSegmentIndex == 2
        {
            txtPaymentMethod.text = "Cash";
        }
       
    }
    
    @IBAction func btnSegmentClicked(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0
        {
            txtAmount.text = "$2";
        }
        else if sender.selectedSegmentIndex == 1
        {
            txtAmount.text = "$4";
        }
        else if sender.selectedSegmentIndex == 2
        {
            txtAmount.text = "$5";
        }
        else if sender.selectedSegmentIndex == 3
        {
            txtAmount.text = "$8";
        }
        else if sender.selectedSegmentIndex == 4
        {
            txtAmount.text = "$20";
        }
        else if sender.selectedSegmentIndex == 5
        {
            txtAmount.text = "$28";
        }
    }
   
    @IBAction func btnAddTicket(_ sender: UIButton) {
        
        
        
        var data : String = txtUserEmail.text!
        data += "\n" + txtCpn.text!
        data += "\n" + txtVehicleCompany.text!
        data += "\n" + txtDateTime.text!
        data += "\n" + txtlotNumber.text!
        data += "\n" + txtSpotNumber.text!
        data += "\n" + txtPaymentMethod.text!
        data += "\n" + txtAmount.text!
        data += "\n" + txtCarColor.text!
        let ud =  UserDefaults.standard
        ud.set(txtUserEmail.text, forKey: "userEmail")
        ud.set(txtCpn.text, forKey: "cpn")
        ud.set(txtVehicleCompany.text, forKey: "vcompany")
        ud.set(txtDateTime.text, forKey: "date")
        ud.set(txtlotNumber.text, forKey: "lotn")
        ud.set(txtSpotNumber.text, forKey: "spotn")
        ud.set(txtPaymentMethod.text, forKey: "payment")
        ud.set(txtAmount.text, forKey: "amount")
        ud.set(txtCarColor.text, forKey: "color")
        let infoAlert = UIAlertController(title: "Confirm details", message: data, preferredStyle: .alert)
        infoAlert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: {_ in self.displayHomeVC()}))
        infoAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(infoAlert, animated: true, completion: nil)
        
        
        
        
    }
    func displayHomeVC(){
        let newUser = userProfile(txtUserEmail.text!,txtCpn.text!, txtVehicleCompany.text!,txtCarColor.text!,txtAmount.text!,txtPaymentMethod.text!,txtSpotNumber.text!,txtlotNumber.text!,txtDateTime.text!)
        
        if userProfile.addUser(newUser: newUser){
            let act = (storyboard?.instantiateViewController(withIdentifier: "HomeViewController"))
            self.present(act!, animated: true, completion: nil)
        }
        else{
            let infoAlert = UIAlertController(title: "Unsuccessful", message: "Account Creation Unsuccessful", preferredStyle: .alert)
            infoAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(infoAlert, animated: true, completion: nil)
        }
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




