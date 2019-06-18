//
//  Manufacturers.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Manufacturers: IDisplay {
    
    var manufacturerId: Int?
    var manufacturerName: String?
    var manufacturerContact: Int64?
    
    init() {
        self.manufacturerId = Int()
        self.manufacturerName = String()
        self.manufacturerContact = Int64()
    }
    
    func display() {
        print("Manufacturer Id: ",manufacturerId!)
        print("Manufacturer Name: ",manufacturerName!)
        print("Manufacturer Contact:",manufacturerContact!)
    }
}
