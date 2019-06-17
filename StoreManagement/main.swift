//
//  main.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

var c1 = Customer()
var od1 = OrderDelivery()

c1.customerId = 1
c1.firstName = "Ujwal"
c1.lastName = "Arora"
c1.sexDef = "M"
c1.email = "ujwalkhorda@gmail.com"
c1.address = Address(suiteNumber: 63, streetName: "lesli", city: "North York", postalCode: "M2H 4L9")
c1.contact = 9465129248
c1.display()
od1.display()


