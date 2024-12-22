//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Ege Kaygisizer on 19/12/24.
//

import SwiftUI

final class AppetizerListViewModel : ObservableObject {
    
    @Published var appetizers : [Appetizer] = []
    @Published var alertItem : AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer : Appetizer?

    func getAppetizers() {
        isLoading = true
            NetworkManager.shared.fetchAppetizers { result in
                DispatchQueue.main.async { [self] in
                    isLoading = false
                    switch result {
                    case .success(let fetchedAppetizers):
                        self.appetizers = fetchedAppetizers // Başarılı veri alındı
                    case .failure(let error):
                        switch error {
                        case .invalidURL:
                            alertItem = AlertContext.invalidURL
                            
                        case .invalidResponse:
                            alertItem = AlertContext.invalidResponse
                            
                        case .invalidData:
                            alertItem = AlertContext.invalidData
                            
                        case .unableToComplete:
                            alertItem = AlertContext.unableToComplete
                        }
                    }
                }
            }
       }
    
}
