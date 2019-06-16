//
//  Address.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

struct Address: Display {
    
    var suiteNumber: Int
    var streetName: String
    var city: String
    var postalCode: String
    
    /*mutating func setCity(city: String) {
        self.city = city
    }*/
    
    func display() {
        print("Address: ",suiteNumber,streetName,city)
        print("Postal Code: ",postalCode)
    }
}
