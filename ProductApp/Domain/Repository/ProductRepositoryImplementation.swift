//
//  ProductRepositoryImplementation.swift
//  ProductApp
//
//  Created by Yves Dukuze on 20/03/2023.
//

import Foundation

final class ProductsListRepositoryImplementation: ProductsListRepository {
    
    let networkManager: Networkable
    
    init(networkManager: Networkable) {
        self.networkManager = networkManager
    }
    
    func getProducts(for url: URL) async throws -> ProductData {
        let data = try await self.networkManager.getDataFromAPI(url: url)
        let productData = try JSONDecoder().decode(ProductData.self, from: data)
        return productData
    }
    
    
}

