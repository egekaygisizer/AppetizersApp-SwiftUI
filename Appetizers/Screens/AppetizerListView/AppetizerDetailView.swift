//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Ege Kaygisizer on 20/12/24.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    
    var appetizer : Appetizer
    @Binding var isShowingDetail : Bool
    
    var body: some View {
        VStack(spacing : 10) {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
            VStack() {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .font(.body)
                    .padding()
                    .multilineTextAlignment(.center)
                
                HStack(spacing : 25) {
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Protein", value: appetizer.protein)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                }
                
                Spacer()
                
                Button {
                    order.add(appetizer)
                    isShowingDetail = false
                } label: {
                    APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
                        
                }.padding(.bottom, 10)
                
            }
                
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(15)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false 
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer : MockData.sampleAppetizer, isShowingDetail: .constant(true))
}

struct NutritionInfo: View {
    
    let title : String
    let value : Int
    
    var body: some View {
        VStack {
            Text(title)
                .bold()
                .font(.caption)
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
