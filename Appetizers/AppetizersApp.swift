//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Ege Kaygisizer on 16/12/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
