//
//  OrderDelivery.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class OrderDelivery: Orders {
    var deliveryDate: String?
    var deliveryPerson: String?
    var recievingPerson: String?
    
    override init() {
        self.deliveryDate = String()
        self.deliveryPerson = String()
        self.recievingPerson = String()
    }
    
    override func display() {
        print("Order Id: ",orderId!)
        print("Order Date: ",orderDate!)
        print("Order Status: ",orderStatus!)
        if orderStatus == true{
            print("Delivery Date: ",deliveryDate!)
            print("Delivery Person: ",deliveryPerson!)
            print("Recieving Person: ",recievingPerson!)
        }
    }
}
