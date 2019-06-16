//
//  OrderDelivery.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class OrderDelivery: Orders {
    var deliveryDate: Date?
    var deliveryPerson: String?
    var recievingPerson: String?
    var amountCollected: Double?
    
    override init() {
        self.deliveryDate = Date()
        self.deliveryPerson = String()
        self.recievingPerson = String()
        self.amountCollected = Double()
    }
}
