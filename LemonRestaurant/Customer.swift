//
//  Customer.swift
//  LemonRestaurant
//
//  Created by Timothy Terrance on 3/2/26.
//

import Foundation

class Customer {
    let name: String
    let email: String
    let visits: Int

    init(name: String, email: String, visits: Int) {
        self.name = name
        self.email = email
        self.visits = visits
    }
}
