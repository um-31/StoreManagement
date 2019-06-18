//
//  main.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

//Manufacturer Data fetching from Json
var m1 = Manufacturers()
var manufacturers: Manufacturers?
var manufacturersList = [Int: Manufacturers]()
func readManufacturerData(jsonFileName: String){
    let url = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
    
    guard let jsonData = url else {print("fuck")
        return
    }
    guard let data = try? Data(contentsOf: jsonData) else { return}
    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else { return }
    
    
    if let jsonDictionary = json as? [Any]{
        for jsonObject in jsonDictionary{
            //print(jsonObject)
            manufacturers = Manufacturers()
            if let js = jsonObject as? [String: Any]{
                
                if let id = js["manufacturerId"] as? Int{
                    manufacturers!.manufacturerId = id
                }
                if let name = js["manufacturerName"] as? String{
                    manufacturers!.manufacturerName = name
                }
                if let contact = js["manufacturerContact"] as? Int64{
                    manufacturers!.manufacturerContact = contact
                }
            }
            manufacturersList[manufacturers!.manufacturerId!] = manufacturers
        }
    }
}

readManufacturerData(jsonFileName: "ManufacturerData")

for (k,v) in manufacturersList {
    m1.manufacturerId = k
    m1.manufacturerName = v.manufacturerName ?? "No Name"
    m1.manufacturerContact = v.manufacturerContact ?? 0000000000
    m1.display()
    print("==============")
}

//Product Data fetching from Json
var p1 = Products()
var products: Products?
var productsList = [Int: Products]()
func readProductsData(jsonFileName: String){
    let url = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
    
    guard let jsonData = url else {print("fuck")
        return
    }
    guard let data = try? Data(contentsOf: jsonData) else { return}
    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else { return }
    
    
    if let jsonDictionary = json as? [Any]{
        for jsonObject in jsonDictionary{
            //print(jsonObject)
            products = Products()
            if let js = jsonObject as? [String: Any]{
                
                if let id = js["productId"] as? Int{
                    products!.productId = id
                }
                if let name = js["productName"] as? String{
                    products!.productName = name
                }
                if let price = js["productPrice"] as? Double{
                    products!.productPrice = price
                }
            }
            productsList[products!.productId!] = products
        }
    }
}

readProductsData(jsonFileName: "Products")

for (k,v) in productsList {
    p1.productId = k
    p1.productName = v.productName ?? "No Name"
    p1.productPrice = v.productPrice ?? 0.00
    p1.display()
    print("==============")
}

//Customer Data fetching from Json
var u1 = Customer()
var customer: Customer?
var customerList = [Int: Customer]()
func readCustomerData(jsonFileName: String){
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
//                if let ad = js["address"] as? [String: Any]{
//                    if let suite = ad["suite"] as? String{
//                        customer!.address?.suiteNumber = suite
//                    }
//                    if let street = ad["street"] as? String{
//                        customer!.address?.streetName = street
//                    }
//                    if let city = ad["city"] as? String{
//                        customer!.address?.city = city
//                    }
//                    if let zip = ad["zipcode"] as? String{
//                        customer!.address?.postalCode = zip
//                    }
//                }
                }
            customerList[customer!.customerId!] = customer
            }
        }
    }

readCustomerData(jsonFileName: "CustomerData")

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
