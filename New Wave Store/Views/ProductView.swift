//
//  ProductView.swift
//  New Wave Store
//
//  Created by Mason Z. on 12/2/24.
//

import SwiftUI

struct ProductView: View {
    
    @Binding var product: Products
    @Binding var cart: [Products]
    
    var body: some View {
        ZStack{
            VStack{
                // Image
                Image(product.picture)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .padding(.all)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                // Name
                HStack {
                    Text(product.name)
                        .font(.custom("Helvetica Neue Thin", size: 35))
                        .bold()
                    Spacer()
                }.padding(.horizontal)
                
                // Description
                HStack {
                    Text(product.description)
                        .font(Constants.textFont)
                        .foregroundColor(Color.gray)
                    Spacer()
                }.padding(.horizontal)
                
                // Price
                HStack {
                    Text("Price: $\(String(format: "%.2f", product.price))")
                        .font(Constants.textFont)
                    Spacer()
                }.padding(.horizontal) .bold()
                
                // Total
                HStack {
                    Text("Total: $\(String(format: "%.2f", product.total))")
                        .font(Constants.textFont)
                    Spacer()
                }.padding(.horizontal) .bold()
                
                // Quantity - Picker
                HStack{
                    Text("Quantity: ")
            
                    Spacer()
                    
                    Picker("select quantity", selection:  $product.quantity) {
                        ForEach(0...10, id: \.self) { value in
                            Text("\(value)")
                        }
                    }
                }.padding(.horizontal)
                    .font(Constants.textFont)
                
                Spacer()
                
                // Add to Cart
                Button(action: {
//                    debug - console
//                    for c in cart {
//                        print(c)
//                    }
                    
                    // if it is in the cart
                    if let index = cart.firstIndex(where: { $0.name == product.name}) {
                        // print("Item is already in cart")
                        // if it's in the cart, only update the quantity
                        cart[index].quantity += product.quantity
                    } else { // if it's not in the cart
                        //   print("Item is added")
                        cart.append(product)
                    }
                }, label: {
                    Text("Add To Cart")
                        .padding(.vertical)
                        .padding(.horizontal, 120)
                        .font(Constants.buttonFont)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
            }
        }
    }
}

#Preview {
    ProductView(product: Binding.constant(Products()), cart: Binding.constant([]))
}
