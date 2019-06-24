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
    
    init(manufId: Int, manufName: String, productId: Int, productName: String, productPrice: Double) {
        self.productId = productId
        self.productName = productName
        self.productPrice = productPrice
        super.init(manufId: manufId, manufName: manufName)
    }

    override func display() {
        print("Product Id: ",productId!)
        print("Product Name: ",productName!)
        print("Product Price: ",productPrice!.dollar())
        print("Manufacturer Name: ",manufacturerName!)
    }
}
