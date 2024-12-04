//
//  CartView.swift
//  New Wave Store
//
//  Created by Mason Zhu (student LM) on 12/4/24.
//

import SwiftUI

struct CartView: View {
    
    @Binding var cart: [Products]
    var body: some View {
        NavigationView{
            ScrollView{
                if cart.isEmpty { // if cart empty
                    HStack{
                        Image(systemName: "person.crop.circle.badge.exclam")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .symbolEffect(.pulse) // animation effect
                         //   .padding(.horizontal, 5)
                        Text("No items in Cart.")
                            .font(Constants.buttonFont)
                        Spacer()
                    }.padding(.horizontal, 25)
                    
                    
                }
                else { // if cart not empty
                    HStack {
                        VStack{
                            ForEach(cart, id: \.name) { product in
                                VStack{
                                    HStack{
                                        Image(product.picture)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 50, height: 50)
                                        VStack{
                                            Text(product.name)
                                                .bold()
                                            Text("Quantity: \(product.quantity)")
                                        }.font(Constants.textFont)
                                        
                                        VStack{
                                            Text("Price:")
                                            Text(" $\(String(format: "%.2f", product.total))")
                                                .foregroundColor(Color.red)
                                                .bold()
                                        }.font(Constants.textFont)
                                    }
                                    
                                }.padding(.horizontal, 25)
                            }.background(Color.gray.opacity(0.08))
                        }
                        Spacer()
                    }
                    .padding([.top, .horizontal], 0)
                }
            }.navigationTitle("Shopping Cart")
        }
    }
}

#Preview {
    CartView(cart: Binding.constant([Products(), Products()]))
}
