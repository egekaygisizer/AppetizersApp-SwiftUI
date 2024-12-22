//
//  Alert.swift
//  Appetizers
//
//  Created by Ege Kaygisizer on 19/12/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    //MARK: - Network Alerts
    
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server is invalid, please try again later."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                       message: Text("There was an error connecting to the server, please try again later"),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                       message: Text("Invalid response from the server, please try again later"),
                                       dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Invalid Data"),
                                       message: Text("Unable to complete the request. Please try again later"),
                                       dismissButton: .default(Text("OK")))
    
    //MARK: - Account Alerts

    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                       message: Text("Please ensure all fields are filled out"),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                       message: Text("Please be sure your email is valid"),
                                       dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                       message: Text("Your profile has been saved"),
                                       dismissButton: .default(Text("OK")))
    
    static let userSaveFailure = AlertItem(title: Text("Save Failed"),
                                       message: Text("Failed to save your profile"),
                                       dismissButton: .default(Text("OK")))

}






