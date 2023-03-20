//
//  ContentView.swift
//  ProductApp
//
//  Created by Yves Dukuze on 20/03/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ProductListViewModel
    @State var isErrorOccured: Bool
    
    var body: some View {
        NavigationStack{
            VStack {
                if viewModel.error != nil {
                    ProgressView().alert(isPresented: $isErrorOccured){
                        Alert(title: Text(viewModel.error?.localizedDescription ?? "Error Occured"),message: Text("Something went wrong"),
                              dismissButton: .default(Text("Ok")))
                    }
                }else {
                    List{
                        ForEach(viewModel.products){ product in
                            NavigationLink{
//                                EmptyView()
                                ProductDetailView(productData: product)
                            }label: {
                                HStack{
                                    Text(product.title)
                                    Text(": $ \(product.price)")
                                }
                            }
                        }
                        
                    }.padding()
                }
            }.task {
                await viewModel.getDataForProducts(urlString: APIEndPoint.apiProducts)
                if viewModel.error != nil{
                    isErrorOccured = true
                }
            }.refreshable {
                await viewModel.getDataForProducts(urlString: APIEndPoint.apiProducts)
                if viewModel.error != nil{
                    isErrorOccured = true
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ProductListViewModel(repository: ProductsListRepositoryImplementation(networkManager: NetworkManger())), isErrorOccured: false )
    }
}
