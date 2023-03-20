//
//  ProductListUseCase.swift
//  ProductApp
//
//  Created by Yves Dukuze on 20/03/2023.
//

import Foundation

protocol ProductListUseCase {
    
    func getDataForProducts(urlString: String) async
    
}
