//
//  ProductData.swift
//  ProductApp
//
//  Created by Yves Dukuze on 20/03/2023.
//

import Foundation

struct ProductData: Codable {
    let products:[Product]
}

struct Product: Codable, Identifiable {
    let id,price:Int
    let title, description:String
}
