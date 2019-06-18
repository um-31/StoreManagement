//
//  Departments.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-17.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

class Departments: IDisplay {
    var departmentId: Int
    var departmentName: String
    
    init() {
        self.departmentId = Int()
        self.departmentName = String()
    }
    
    func display() {
        print("Department Id: ",departmentId)
        print("Department Name: ",departmentName)
    }
}
