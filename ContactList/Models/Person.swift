//
//  Person.swift
//  ContactList
//
//  Created by Денис Хафизов on 24.10.2023.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
