//
//  Orders.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Orders: Customer {
    var orderId: Int?
    var cust = Customer()
    var orderDate: String?
    var orderStatus: Bool?
    var productsOrdered: [Int]?
    var totalAmount: Double?
    
    override init() {
        self.orderId = Int()
        self.orderDate = String()
        self.orderStatus = Bool()
        self.productsOrdered = [Int()]
        self.totalAmount = Double()
    }
    
    override func display() {
        print("Order Id: ",orderId!)
        print("Order Date: ",orderDate!)
        print("Order Status: ",orderStatus! as Any)
        for p in productsOrdered! {
            print("Product Id: ",p)
        }
    }
}
