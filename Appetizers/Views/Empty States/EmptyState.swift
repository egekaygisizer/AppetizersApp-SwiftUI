//
//  EmptyState.swift
//  Appetizers
//
//  Created by Ege Kaygisizer on 21/12/24.
//

import SwiftUI

struct EmptyState: View {
    
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: "cart.fill.badge.questionmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150,height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(message: "This is our Test Message for Empty State")
}

