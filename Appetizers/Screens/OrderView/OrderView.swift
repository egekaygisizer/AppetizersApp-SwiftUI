//
//  OrderView.swift
//  Appetizers
//
//  Created by Ege Kaygisizer on 16/12/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("order place")
                    } label : {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(message: "You have no items in your order. Place add an appetizer.")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
    
    
}

#Preview {
    OrderView()
}
