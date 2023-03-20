//
//  ProductsRepository.swift
//  ProductApp
//
//  Created by Yves Dukuze on 20/03/2023.
//

import Foundation

import Foundation

protocol ProductsListRepository {
    
    func getProducts(for url:URL) async throws -> ProductData
    
}
