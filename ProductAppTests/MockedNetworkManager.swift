//
//  MockedNetworkManager.swift
//  ProductAppTests
//
//  Created by Yves Dukuze on 20/03/2023.
//

import Foundation
@testable import ProductApp

class MockedNetworkManager: Networkable {
    
    func getDataFromAPI(url: URL) async throws -> Data {
        do {
            let bundle = Bundle(for: MockedNetworkManager.self)
            guard let path = bundle.url(forResource: url.absoluteString, withExtension: "json") else {
                throw NetworkError.invalidURL
            }
            let data = try Data(contentsOf: path)
            return data
        } catch {
            throw NetworkError.dataNotFound
        }
    }
}
