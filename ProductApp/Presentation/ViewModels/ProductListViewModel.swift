//
//  ProductListViewModel.swift
//  ProductApp
//
//  Created by Yves Dukuze on 20/03/2023.
//

import Foundation

@MainActor
class ProductListViewModel: ObservableObject {
    
    @Published var products: [Product] = []
    @Published var error: NetworkError?

    private let repository: ProductsListRepository
   
    init(repository: ProductsListRepository) {
        self.repository = repository
    }
}

extension ProductListViewModel: ProductListUseCase {
    
    func getDataForProducts(urlString: String) async {
        guard let url = URL(string: urlString) else {
            DispatchQueue.main.async {
                self.error = .invalidURL
            }
            return
        }
        do {
            let productData = try await repository.getProducts(for: url)
            products = productData.products
            error = nil
        } catch {
            self.error = NetworkError.dataNotFound
        }
    }
    
}
