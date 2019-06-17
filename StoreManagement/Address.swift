//
//  Address.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

struct Address: IDisplay {
    
    var suiteNumber: Int
    var streetName: String
    var city: String
    var postalCode: String
    
    func display() {
        print("Address: ",suiteNumber,streetName,city)
        print("Postal Code: ",postalCode)
    }
    
}
