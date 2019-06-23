//
//  Customer.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

enum Gender {
    case Male, Female, Other
}

class Customer: IDisplay {
    var customerId: Int?
    var firstName: String?
    var lastName: String?
    var fullName: String{
        return "\(firstName!) \(lastName!)"
    }
    var sexDef: String?
    var gender: Gender?
    var email: String?
    var contact: Int64?
    var orderPlaced: Int?
    var address: Address?
    
    init() {
        self.customerId = Int()
        self.firstName = String()
        self.lastName = String()
        self.gender = Gender.Other
        self.email = String()
        self.contact = Int64()
        self.orderPlaced = Int()
        
    }
    
    func display() {
        print("Customer Id: ",customerId!)
        print("Name: ",fullName)
        if sexDef == "M"{
            print("Gender: ",Gender.Male)
        }else if sexDef == "F"{
            print("Gender: ",Gender.Female)
        }else{
            print("Gender: ",Gender.Other)
        }
        //print(address)
        if address != nil
        {
            address!.display()
        }else{print("No address found")}
        print("Email: ",email!)
        print("Contact: ",contact!)
        //print("Order Id: ",orderPlaced!)
    }
}
