//
//  User.swift
//  Appetizers
//
//  Created by Ege Kaygisizer on 21/12/24.
//

import Foundation

struct User: Codable {
    
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthday: Date = Date()
    var extraNapkins = false
    var frequentRefills = false
    
}
