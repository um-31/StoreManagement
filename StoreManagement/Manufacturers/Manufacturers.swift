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
    
    init(manufId:Int, manufName:String) {
        self.manufacturerId = manufId
        self.manufacturerName = manufName
    }
    
    func display() {
        print("Manufacturer Id: ",manufacturerId!)
        print("Manufacturer Name: ",manufacturerName!)
    }
}
