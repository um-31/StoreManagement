//
//  Dollar.swift
//  StoreManagement
//
//  Created by hhh on 2019-06-24.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

extension Double
{
    public func dollar() -> String
    {
        return String.init(format: "$%0.2f ", self)
    }
}
