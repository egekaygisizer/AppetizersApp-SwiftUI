//
//  Appetizer.swift
//  Appetizers
//
//  Created by Ege Kaygisizer on 16/12/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id : Int
    let name : String
    let description : String
    let price : Double
    let imageURL : String
    let calories : Int
    let protein : Int
    let carbs : Int
}

struct AppetizerResponse : Decodable {
    let request : [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "this is a description",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let appetizers: [Appetizer] = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 0001,
                                        name: "Test Appetizer",
                                        description: "this is a description",
                                        price: 9.99,
                                        imageURL: "",
                                        calories: 99,
                                        protein: 99,
                                        carbs: 99)
    
    static let orderItemTwo = Appetizer(id: 0002,
                                        name: "Test Appetizer",
                                        description: "this is a description",
                                        price: 9.99,
                                        imageURL: "",
                                        calories: 99,
                                        protein: 99,
                                        carbs: 99)
    
    static let orderItemThree = Appetizer(id: 0003,
                                        name: "Test Appetizer",
                                        description: "this is a description",
                                        price: 9.99,
                                        imageURL: "",
                                        calories: 99,
                                        protein: 99,
                                        carbs: 99)
    
    static let orderItems: [Appetizer] = [orderItemOne, orderItemTwo, orderItemThree]
}

