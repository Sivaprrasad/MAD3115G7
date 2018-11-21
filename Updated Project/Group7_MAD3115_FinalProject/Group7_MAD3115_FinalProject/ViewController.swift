//
//  ViewController.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-15.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//

import UIKit


class ViewController: UIViewController, DataPass {
   

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
   // @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var txtContacNumber: UITextField!
    @IBOutlet weak var txtCarPlateNumber: UITextField!
    var i = Int()
    var isUpdate = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnShowData(_ sender: UIButton) {
        
        let listVc = self.storyboard?.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
        listVc.delegate = self
        self.navigationController?.pushViewController(listVc, animated: true)
    }
    
    @IBAction func btnHomeClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func registerButtonClicked(_ sender: UIButton) {
        let dict = ["name":txtName.text,"email":txtEmail.text,"password":txtPassword.text,"contact":txtContacNumber.text,"cpn":txtCarPlateNumber.text]
        if isUpdate
        {
            DataBaseObject.globalShareInstance.ediData(object: dict as! [String:String], i: i)
        }
        else
        {
           DataBaseObject.globalShareInstance.save(object:dict as! [String : String])
        }
        let listVc = self.storyboard?.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
        listVc.delegate = self
        self.navigationController?.pushViewController(listVc, animated: true)
        
        
    }
    func data(object: [String : String], index: Int, isEdit: Bool) {
        txtName.text = object["name"]
        txtEmail.text = object["email"]
        txtPassword.text = object["password"]
        txtContacNumber.text = object["contact"]
        txtCarPlateNumber.text = object["cpn"]
        i = index
        isUpdate = isEdit
    }
}

