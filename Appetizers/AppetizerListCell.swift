//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Ege Kaygisizer on 17/12/24.
//

import SwiftUI

struct AppetizerListCell: View {
    
    var appetizer : Appetizer
    
    var body: some View {
        HStack {
            Image("blackened-shrimp")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment : .leading) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.secondary)
            }
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
