//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import QuartzCore


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool
}

extension BankVault: ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        var rightPassword: Bool = false
        
        if password.isEmpty {
            rightPassword = false
        }
        if password.count > 10 {
            rightPassword = false
        }
        for (index, value) in password.enumerated() {
            if index % 2 == 0 && value % 2 == 0 {
               rightPassword = true
            } else {
               rightPassword = false
            }
        }
        return rightPassword
    }
    
 
}





