//
//  User.swift
//  Appetizers
//
//  Created by Эдип on 08.10.2022.
//

import Foundation

struct User: Codable {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
