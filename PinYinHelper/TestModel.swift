//
//  TestModel.swift
//  PinYinHelper
//
//  Created by 刘剑云 on 2018/11/23.
//  Copyright © 2018 ct. All rights reserved.
//

import UIKit

class TestModel: NSObject {
    var name = ""
    var age = 0
    
    init(_ name: String, _ age: Int) {
        super.init()
        self.name = name
        self.age = age
    }
}
