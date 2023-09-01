//
//  User.swift
//  PropertyWrapper
//
//  Created by Bhushan  Borse on 01/09/23.
//

import Foundation

class User: ObservableObject {
    
    @Published var name: String = String()
}

class Account: ObservableObject {
    
    @Published var balance: Double = 0.0
}
