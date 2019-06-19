//
//  Address.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

struct Address: IDisplay {
    
    var suiteNumber: String
    var streetName: String
    var city: String
    var postalCode: String
    
//    init() {
//        self.suiteNumber = String()
//        self.streetName = String()
//        self.city = String()
//        self.postalCode = String()
//    }
    
    func display() {
        print("Address: ",suiteNumber,streetName,city)
        print("Postal Code: ",postalCode)
    }
    
}
