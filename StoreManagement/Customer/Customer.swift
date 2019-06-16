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

class Customer: Display {
    var customerId: Int?
    var firstName: String?
    var lastName: String?
    var fullName: String{
        return "\(firstName!) \(lastName!)"
    }
    var gender: Gender?
    var email: String?
    var contact: Int?
    
    init() {
        self.customerId = Int()
        self.firstName = String()
        self.lastName = String()
        self.gender = Gender.Other
        self.email = String()
        self.contact = Int()
    }
    
    func display() {
        
    }
}
