//
//  main.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-16.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

//Manufacturer Data fetching from Json
//var m1 = Manufacturers()
//var manufacturers: Manufacturers?
//var manufacturersList = [Int: Manufacturers]()
//func readManufacturerData(jsonFileName: String){
//    let url = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
//
//    guard let jsonData = url else {print("fuck")
//        return
//    }
//    guard let data = try? Data(contentsOf: jsonData) else { return}
//    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else { return }
//
//
//    if let jsonDictionary = json as? [Any]{
//        for jsonObject in jsonDictionary{
//            //print(jsonObject)
//            manufacturers = Manufacturers()
//            if let js = jsonObject as? [String: Any]{
//
//                if let id = js["manufacturerId"] as? Int{
//                    manufacturers!.manufacturerId = id
//                }
//                if let name = js["manufacturerName"] as? String{
//                    manufacturers!.manufacturerName = name
//                }
//            }
//            manufacturersList[manufacturers!.manufacturerId!] = manufacturers
//        }
//    }
//}
//
//readManufacturerData(jsonFileName: "ManufacturerData")

//for (k,v) in manufacturersList {
//    m1.manufacturerId = k
//    v.display()
//    print("==============")
//}

//Product Data fetching from Json
var p1 = Products(manufId: 0, manufName: "Abc", productId: 0, productName: "Apple", productPrice: 10)
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
            products = Products(manufId: 0, manufName: "", productId: 0, productName: "", productPrice: 10)
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
                if let manuId = js["manufacturerId"] as? Int{
                    products!.manufacturerId = manuId
                }
                if let manuName = js["manufacturerName"] as? String{
                    products!.manufacturerName = manuName
                }
            }
            productsList[products!.productId!] = products
        }
    }
}

readProductsData(jsonFileName: "Products")

//for (k,v) in productsList {
//    p1.productId = k
//    v.display()
//    print("==============")
//}

//Customer Data fetching from Json
var u1 = Customer()
var customer: Customer?
var a1 = Address(suiteNumber: "", streetName: "", city: "", postalCode: "")
var temp: String?
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
                if let order = js["order"] as? Int{
                    customer!.orderPlaced = order
                }
                if let ad = js["address"] as? [String: Any]{
                    
                    if let suite = ad["suite"] as? String{
                        temp = suite
                        a1.suiteNumber = temp!
                    }
                    if let street = ad["street"] as? String{
                        temp = street
                        a1.streetName = temp!
                    }
                    if let city = ad["city"] as? String{
                        temp = city
                        a1.city = temp!
                    }
                    if let zip = ad["zipcode"] as? String{
                        temp = zip
                        a1.postalCode = temp!
                    }
                    customer?.address = a1
                }
                }
            customerList[customer!.customerId!] = customer
            }
        }
    }

readCustomerData(jsonFileName: "CustomerData")

//for (k,v) in customerList {
//    u1.customerId = k
//    v.display()
//    print("==============")
//}

// Reading Order data
var o1 = Orders()
var orders: Orders?
var orderList = [Int: Orders]()
func readOrderData(jsonFileName: String){
    let url = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
    
    guard let jsonData = url else {print("fuck")
        return
    }
    guard let data = try? Data(contentsOf: jsonData) else { return}
    guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else { return }
    
    
    if let jsonDictionary = json as? [Any]{
        for jsonObject in jsonDictionary{
            //print(jsonObject)
            orders = Orders()
            if let js = jsonObject as? [String: Any]{
                
                if let id = js["orderId"] as? Int{
                    orders!.orderId = id
                }
                if let date = js["orderDate"] as? String{
                    orders!.orderDate = date
                }
                if let status = js["orderStatus"] as? Bool{
                    orders!.orderStatus = status
                }
                if let products = js["productsOrdered"] as? [Int]{
                    orders!.productsOrdered = products
                }
            }
            orderList[orders!.orderId!] = orders
        }
    }
}

readOrderData(jsonFileName: "Orders")

//for (k,v) in orderList {
//    o1.orderId = k
//    v.display()
//    print("==============")
//}
//var abc: Int?
print("Please Enter your Desired Option:")
print("Press 1 to view all Customers")
print("Press 2 to view all Orders")
print("Press 3 to search by Order Id")
print("Press 4 to search by Customer Id")
print("Press 5 to search a Product")

let option = Int(readLine()!)
if option == 1{
    for (k,c) in orderList{
        for (_,v) in customerList{
            if v.orderPlaced == k{
                //abc = k
                v.display()
                c.display()
                print("<==============>")
            }
            
        }
    }
}else if option == 2{
    for(_,v) in orderList{
        //o1.orderId = k
        v.display()
        var sum: Double = 0.0
            for(k1,v1) in productsList{
                for i in v.productsOrdered!{

                    if k1 == i{
                        sum = Double(sum + v1.productPrice!)
                    }
                }
            }
        print("Total: ",sum.dollar())
        print("<==============>")
    }
}else if option == 3{
    for(k,_) in orderList{
        o1.orderId = k
        print("Order Id:",k)
        print("")
    }
    print("<==============>")
    print("Enter Order Id for order details:")
    let option1 = Int(readLine()!)
    for(k,v) in orderList{
        o1.orderId = k
        if k == option1{
            v.display()
            var sum: Double = 0.0
            for(k1,v1) in productsList{
                for i in v.productsOrdered!{
                    
                    if k1 == i{
                        sum = Double(sum + v1.productPrice!)
                    }
                }
            }
            print("Total: ",sum.dollar())
        }
    }
}else if option == 4{
    for (k,v) in customerList{
            u1.customerId = k
        print("Customer Id: ",k)
        print("Name: ",v.fullName)
            print("==============")
    }
    print("Please enter Customer Id: ")
    let option2 = Int(readLine()!)
    for (k,v) in orderList{
        for (ke,va) in customerList{
            if ke == option2{
                if va.orderPlaced == k{
                    va.display()
                    v.display()
                    var sum: Double = 0.0
                    for(k1,v1) in productsList{
                        for i in v.productsOrdered!{
                            
                            if k1 == i{
                                sum = Double(sum + v1.productPrice!)
                            }
                        }
                    }
                    print("Total: ",sum)
                    print("<==============>")
                }
            }
        }
    }
}else if option == 5{
    var temp = 0
    var prod: String?
    for (k,v) in productsList{
        p1.productId = k
        v.display()
        print("==============")
    }
    print("Enter Product Id to Check Order History: ")
    let option3 = Int(readLine()!)
    for (k,v) in productsList{
        if k == option3{
            for (k1,v1) in orderList{
                for i in v1.productsOrdered!{
                    if k == i {
                        temp = temp + 1
                        prod = v.productName
                        print("\nOrdered in Order Id: ",k1)
                    }
                }
            }
        }
    }
    print("\n\(prod!) was order \(temp) times.")
}
