//
//  ProductListView.swift
//  New Wave Store
//
//  Created by Mason Z. on 12/3/24.
//

import SwiftUI

struct ProductListView: View {
    
    @State var products: [Products] = [Products(), Products(name: "wPen", description: "An excellent oen.", price: 10.99, quantity: 0, picture: "wPen"), Products(name: "Software", description: "New Wave software", price: 24.95, quantity: 0, picture: "software"), Products(name: "nwPhone", description: "A Phone For The New Wave", price: 359.99, quantity: 0, picture: "nwPhone")]
    
    var body: some View {
        NavigationView {
            List($products) { $product in
                NavigationLink {
                    ProductView(product: $product)
                } label: {
                    HStack{
                        Image(product.picture)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        
                        Text(product.name)
                            .font(Constants.textFont)
                            .bold()
                    }
                }
            }.navigationTitle("Products")
        }
    }
}

#Preview {
    ProductListView()
}
