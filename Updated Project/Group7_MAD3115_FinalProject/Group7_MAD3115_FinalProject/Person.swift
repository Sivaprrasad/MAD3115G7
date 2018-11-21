//
//  Person.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-20.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//

import Foundation

class Person{
 
    var name: String!
    var email: String!
    var password: String!
     private static var userList = [String: Person]()
  
    init(){
        self.name = ""
        self.email = ""
        self.password = ""
       
    }
    init(_ name: String,  _ email: String, _ password: String) {
        self.name = name
        self.email = email
        self.password = password
       
    }
    static func addUser(newUser: Person) -> Bool {
        if self.userList[newUser.email] == nil{
            self.userList[newUser.email] = newUser
            return true
        }
        return false
    }
    static func deleteUser(newUser: Person) -> Bool {
        self.userList[newUser.email] = nil
        return true
    }
    
    static func getAllUsers() -> [String: Person]{
        return userList
    }
    
    static func searchUser(userEmail: String) -> Person {
        if self.userList[userEmail] != nil{
            return self.userList[userEmail]!
        }
        return Person()
    }
}
