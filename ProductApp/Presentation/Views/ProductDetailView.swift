//
//  ProductDetailView.swift
//  ProductApp
//
//  Created by Yves Dukuze on 20/03/2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    var productData: Product
    
    var body: some View {
        VStack {
            Text(productData.title)
                .foregroundColor(.gray)
                .font(.headline)
            Divider()
            Text(productData.description).font(.caption2)
        }
        Spacer()
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(productData: Product(id: 1, price: 9, title: "Proudct 1 Title", description: "Product 1 Description"))
    }
}
