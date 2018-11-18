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
    @IBOutlet weak var txtColor: UIPickerView!
    @IBOutlet weak var txtParkingHours: UITextField!
    @IBOutlet weak var txtDateTime: UITextField!
    @IBOutlet weak var txtlotNumber: UITextField!
    @IBOutlet weak var txtSpotNumber: UITextField!
    @IBOutlet weak var txtPaymentMethod: UITextField!
    @IBOutlet weak var txtAmount: UITextField!
    @IBOutlet weak var lblCountryName: UILabel!
    
    @objc private var datePicker: UIDatePicker?
    
    let countryList = ["Red", "Green", "Blue", "Black", "White", "Purple", "Cyan"]
    
    let colorList = [""]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.txtColor.dataSource = self
        self.txtColor.delegate = self
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(getter: datePicker), for: .valueChanged)
        let tapGasture = UITapGestureRecognizer(target: self, action: #selector(getter: datePicker))
        
        view.addGestureRecognizer(tapGasture)
        txtDateTime.inputView = datePicker

        // Do any additional setup after loading the view.
    }
    
    func viewTapped(gestureRecognizer:UITapGestureRecognizer )
    {
      view.endEditing(true)
    }
    func dateChanged(datePicker: UIDatePicker)
    {
      let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/DD/YYYY"
        txtDateTime.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
   
    
    @IBAction func btnNewTicketClicked(_ sender: UIButton) {
        
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
extension TicketViewController: UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        var count = 0
        if component == 0
        {
            count = self.countryList.count
        }
        else if component == 1
        {
            count = self.colorList.count
        }
        return count
    }
}

extension TicketViewController: UIPickerViewDelegate
{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return component == 0 ? self.countryList[row] : self.colorList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.lblCountryName.text = component == 0 ? self.countryList[row] : self.colorList[row]
        
        let country = self.countryList[txtColor.selectedRow(inComponent: 0)]
        let color = self.colorList[txtColor.selectedRow(inComponent: 1)]
        
        print("\(country) -- \(color)")
    }
}
