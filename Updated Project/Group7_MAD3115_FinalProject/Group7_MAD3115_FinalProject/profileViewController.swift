//
//  profileViewController.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-20.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//

import UIKit

class profileViewController: UIViewController {
    
    @IBOutlet weak var lblNewSpot: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblemail: UILabel!
    @IBOutlet weak var lblPlot: UILabel!
    @IBOutlet weak var lblSpot: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblPaymentMethod: UILabel!
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var lblBrand: UILabel!
    @IBOutlet weak var lblcpn: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         let ud = UserDefaults.standard
        if let amount = ud.string(forKey: "amount")
        {
            lblAmount.text = amount
        }
        
        if let name = ud.string(forKey: "userName")
        {
            lblName.text = "Person Name: " + name
        }
        if let email = ud.string(forKey: "userEmail")
        {
            lblemail.text = "Email ID: " + email
        }
        if let lotNo = ud.string(forKey: "lotn")
        {
            lblPlot.text = "Parking Lot No.: " + lotNo
        }
        if let spotn = ud.string(forKey: "spotn")
        {
           
            lblNewSpot.text = "Parking Spot No.: " + spotn
        }
        if let date = ud.string(forKey: "date")
        {
            lblDate.text = date
        }
        if let pmethod = ud.string(forKey: "payment")
        {
            lblPaymentMethod.text = "Payment Method  : " + pmethod
        }
        if let color = ud.string(forKey: "color")
        {
            lblColor.text = "Vehicle Color :" + color
        }
        if let brand = ud.string(forKey: "vcompany")
        {
            lblBrand.text = "Make: " + brand
        }
        if let cpn = ud.string(forKey: "cpn")
        {
            lblcpn.text = "Plate : " + cpn
        }
       
        else{
            lblAmount.text = "no data from user default"
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnRetuenClicked(_ sender: UIButton) {
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
