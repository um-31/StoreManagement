//
//  main.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation
var u1 = Customer()
var customer: Customer?
var customerList = [Int: Customer]()
func readProductData(jsonFileName: String){
    let url = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
    
    guard let jsonData = url else {print("fuck")
        return
    }
    guard let data = try? Data(contentsOf: jsonData) else { return}
    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else { return }
    
    
    if let jsonDictionary = json as? [Any]{
        for jsonObject in jsonDictionary{
            //print(jsonObject)
            customer = Customer()
            if let js = jsonObject as? [String: Any]{
                
                if let id = js["customerId"] as? Int{
                    customer!.customerId = id
                }
                if let firstName = js["firstName"] as? String{
                    customer!.firstName = firstName
                }
                if let lastName = js["lastName"] as? String{
                    customer!.lastName = lastName
                }
                if let email = js["email"] as? String{
                    customer!.email = email
                }
                if let gender = js["gender"] as? String{
                    customer!.sexDef = gender
                }
                if let contact = js["contact"] as? Int64{
                    customer!.contact = contact
                }
                }
            customerList[customer!.customerId!] = customer
            }
        }
    }

readProductData(jsonFileName: "CustomerData")

var name: String!
for (k,v) in customerList {
    u1.customerId = k
    u1.firstName = v.firstName ?? "No Name"
    u1.lastName = v.lastName ?? "No Name"
    u1.email = v.email
    u1.contact = v.contact
    u1.sexDef = v.sexDef
    u1.display()
    print("==============")
}
//var c1 = Customer()
//var od1 = OrderDelivery()

//var p1 = Products()



//c1.customerId = 1
//c1.firstName = "Ujwal"
//c1.lastName = "Arora"
//c1.sexDef = "M"
//c1.email = "ujwalkorda@gmail.com"
//c1.address = Address(suiteNumber: 63, streetName: "lesli", city: "North York", postalCode: "M2H 4L9")
//c1.contact = 9465129248
//c1.display()

