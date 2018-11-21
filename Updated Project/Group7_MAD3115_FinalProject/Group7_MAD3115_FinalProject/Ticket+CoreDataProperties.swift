//
//  Ticket+CoreDataProperties.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-17.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//
//

import Foundation
import CoreData


extension Ticket {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ticket> {
        return NSFetchRequest<Ticket>(entityName: "Ticket")
    }

    @NSManaged public var amount: String?
    @NSManaged public var useremail: String?
    @NSManaged public var usercpn: String?
    @NSManaged public var carcompany: String?
    @NSManaged public var carcolor: String?
    @NSManaged public var parkinghours: String?
    @NSManaged public var datetime: String?
    @NSManaged public var lotnumber: String?
    @NSManaged public var spotnumber: String?
    @NSManaged public var paymentmethod: String?

}
