//
//  DataBaseObject.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-15.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DataBaseObject  {
    static var globalShareInstance = DataBaseObject()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func save(object: [String:String])
    {
        let user = NSEntityDescription.insertNewObject(forEntityName: "User", into: context!) as! User
        
    user.name = object["name"]
        user.email = object["email"]
        user.password = object["password"]
        user.contact = object["contact"]
        user.cpn = object["cpn"]
        do{
           try context?.save()
        }
        catch{
            print("Data not Saved")
        }
        }
    func getUserData()->[User]
    {
        var user = [User]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "User")
        do{
            user = try context?.fetch(fetchRequest) as! [User]
        }
        catch
        {
            print("not get data")
        }
        return user
        
    }
    func deleteData(index : Int)-> [User]
    {
        var user = getUserData()
        context?.delete(user[index])
        user.remove(at: index)
        do{
            try context?.save()
        }
        catch
        {
            print("not Deleted")
        }
        return user
        
    }
    func ediData(object: [String:String], i:Int)
    {
       var user = getUserData()
        user[i].name = object["name"]
        user[i].email = object["email"]
        user[i].password = object["password"]
        user[i].contact = object["contact"]
        user[i].cpn = object["cpn"]
        do
        {
            try context?.save()
        }
        catch
        {
          print("data Not Updated")
        }
    }
    
    
}
