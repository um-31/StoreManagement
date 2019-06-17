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
    var manufacturerContact: Int?
    
    init() {
        self.manufacturerId = Int()
        self.manufacturerName = String()
        self.manufacturerContact = Int()
    }
    
    func display() {
        
    }
}
