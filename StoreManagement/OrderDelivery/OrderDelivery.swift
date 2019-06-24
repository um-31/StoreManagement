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
        super.init()
    }
    
    override func display() {
        print("Order Id: ",orderId!)
        print("Order Date: ",orderDate!)
        print("Order Status: ",orderStatus!)
        for i in productsOrdered! {
            print("Products Ordered: ",i)
        }
        //print("Total Amount",totalAmount!)
        if orderStatus == true{
            print("Delivery Date: ",deliveryDate!)
            print("Delivery Person: ",deliveryPerson!)
            print("Recieving Person: ",recievingPerson!)
            print("Amount Collected: ",amountCollected!)
            //print("Pending Amount:",(totalAmount! - amountCollected!))
        }
    }
}
