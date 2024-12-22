//
//  APButton.swift
//  Appetizers
//
//  Created by Ege Kaygisizer on 20/12/24.
//

import SwiftUI

struct APButton: View {
    
    let title : LocalizedStringKey
    
    var body: some View {
        Text(title)
            .frame(width: 250, height: 60)
            .background(Color("brandPrimary"))
            .foregroundStyle(.white)
            .cornerRadius(8)
    }
}

#Preview {
    APButton(title: "Test Title")
}
