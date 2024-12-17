//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Ege Kaygisizer on 16/12/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @State var appetizers : [Appetizer] = []

    var body: some View {
        NavigationView {
            List(appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
            .onAppear { getAppetizers() }
        }
    }
    
    func getAppetizers() {
           NetworkManager.shared.fetchAppetizers { result in
               DispatchQueue.main.async {
                   switch result {
                   case .success(let fetchedAppetizers):
                       appetizers = fetchedAppetizers
                   case .failure(_):
                       print("Veri Yüklenmedi")
                   }
               }
           }
       }
}

#Preview {
    AppetizerListView()
}

