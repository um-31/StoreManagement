//
//  Products.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Products: Manufacturers {
    
    
    var productId: Int?
    var productName: String?
    var productPrice: Double?
    
    override init() {
        self.productId = Int()
        self.productName = String()
        self.productPrice = Double()
    }
    
    
}
