//
//  ProductAppApp.swift
//  ProductApp
//
//  Created by Yves Dukuze on 20/03/2023.
//

import SwiftUI

@main
struct ProductAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ProductListViewModel(repository: ProductsListRepositoryImplementation(networkManager: NetworkManger())), isErrorOccured: false)
        }
    }
}
