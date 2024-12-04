//
//  ContentView.swift
//  New Wave Store
//
//  Created by Mason Z. on 11/26/24.
//

import SwiftUI



struct ContentView: View {
    
    @State var cart: [Products] = []

    var body: some View {
        /*
        VStack {
            NavigationView {
                List($cart) { $cart in
                    NavigationLink {
                        Text("test")
                    } label: {
                        HStack{
                            Image(cart.picture)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                           
                            
                            Text(cart.name)
                                .font(Constants.textFont)
                                .bold()
                            
                            Text("\(cart.quantity)")
                            
                        }
                    }
                }.navigationTitle("Cart")
            }
        }.font(.system(size: 20))
        .padding()
        */
        TabView {
            ProductListView(cart: $cart)
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("Products")
                }
            
            CartView(cart: $cart)
                .tabItem{
                    Image(systemName: "cart.fill")
                    Text("Cart")
                }
        }
    }
}

#Preview {
    ContentView()
}
