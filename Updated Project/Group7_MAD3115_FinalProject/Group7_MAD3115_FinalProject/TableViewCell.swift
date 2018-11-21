//
//  TableViewCell.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-16.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblNAme: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var lblContact: UILabel!
    @IBOutlet weak var lblCarPlateNumber: UILabel!
    var user : User!
    {
        didSet
        {
            lblNAme.text = user.name
            lblEmail.text = user.email
            lblPassword.text = user.password
            lblContact.text = user.contact
            lblCarPlateNumber.text = user.cpn
            
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
