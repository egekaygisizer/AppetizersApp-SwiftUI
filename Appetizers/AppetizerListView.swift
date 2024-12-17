//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Ege Kaygisizer on 16/12/24.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
        
    }
}

#Preview {
    AppetizerListView()
}
