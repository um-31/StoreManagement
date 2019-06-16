//
//  Orders.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Orders: Display {
    var orderId: Int?
    var orderDate: Date?
    var orderStatus: Bool?
    var productsOrdered: [Int]?
    var totalAmount: Double?
    
    init() {
        self.orderId = Int()
        self.orderDate = Date()
        self.orderStatus = Bool()
        self.productsOrdered = [Int()]
        self.totalAmount = Double()
    }
    
    func display() {
        
    }
}
