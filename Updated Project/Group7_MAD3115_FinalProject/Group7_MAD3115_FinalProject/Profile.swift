//
//  Profile.swift
//  Group7_MAD3115_FinalProject
//
//  Created by  Z Angrazy Jatt on 2018-11-20.
//  Copyright © 2018 Z Angrazy Jatt. All rights reserved.
//

import Foundation

class userProfile{
    
    
    var email: String!
    var cpn: String!
    var vCompany: String!
    var date : String!
    var lotN : String!
    var spotN : String!
    var payment : String!
    var amount : String!
    var carColor : String!
    
    private static var userList = [String: userProfile]()
    
    init(){
        self.email = ""
        self.cpn = ""
        self.vCompany = ""
        self.date  = ""
        self.lotN  = ""
        self.spotN  = ""
        self.payment  = ""
        self.amount  = ""
        self.carColor  = ""
       
        
        
    }
    init(  _ email: String, _ cpn: String,_ vCompany : String,_ date: String,_ lotN : String,_ spotN : String,_ payment : String,_ amount : String,_ carColor : String) {
        
        self.email = email
        self.cpn = cpn
        self.vCompany = vCompany
        self.date = date
        self.lotN = lotN
        self.spotN = spotN
        self.payment = payment
        self.carColor = carColor
        
        
    }
    static func addUser(newUser: userProfile) -> Bool {
        if self.userList[newUser.email] == nil{
            self.userList[newUser.email] = newUser
            return true
        }
        return false
    }
    static func deleteUser(newUser: userProfile) -> Bool {
        self.userList[newUser.email] = nil
        return true
    }
    
    static func getAllUsers() -> [String: userProfile]{
        return userList
    }
    
    static func searchUser(userEmail: String) -> userProfile {
        if self.userList[userEmail] != nil{
            return self.userList[userEmail]!
        }
        return userProfile()
    }
}

