//
//  Products.swift
//  New Wave Store
//
//  Created by Mason Z. on 11/26/24.
//

import Foundation

/*
 A Product should have five store properties: name, description, price, quantity, and picture. The first four properties should be straightforward, the last property will be a String which stores the name of the image that will be used for the product.
 Product should also have a computed property named total. total should be computed by multiplying price * quantity.
 Write this class's implementation. Include an initializer that has default values for each stored property.

 */

struct Products: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var price: Double
    var quantity: Int
    var picture: String
    
    var total: Double {
        price * Double(quantity)
    }
    
    init(name: String = "NW-PC", description: String = "A personal computer", price: Double = 999.99, quantity: Int = 0, picture: String = "NW-PC") {
        self.name = name
        self.description = description
        self.price = price
        self.quantity = quantity
        self.picture = picture
    }

}


