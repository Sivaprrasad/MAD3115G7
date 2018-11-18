//
//  ListViewController.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-16.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//

import UIKit
protocol DataPass {
    func data(object: [String:String], index:Int, isEdit:Bool)
}

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var user = [User]()
    var delegate:DataPass!

    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        user = DataBaseObject.globalShareInstance.getUserData()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
       /* cell.lblNAme.text = user[indexPath.row].name
        cell.lblEmail.text = user[indexPath.row].email
        cell.lblPassword.text = user[indexPath.row].password
        cell.lblContact.text = user[indexPath.row].contact
        cell.lblCarPlateNumber.text = user[indexPath.row].cpn*/
        cell.user = user[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            user = DataBaseObject.globalShareInstance.deleteData(index: indexPath.row)
            self.TableView.deleteRows(at: [indexPath], with: .automatic)
           
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dict = ["name":user[indexPath.row].name,"email":user[indexPath.row].email,"password":user[indexPath.row].password,"contact":user[indexPath.row].contact,"cpn":user[indexPath.row].cpn]
        delegate.data(object: dict as! [String:String], index: indexPath.row, isEdit: true)
        self.navigationController?.popViewController(animated: true)
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
