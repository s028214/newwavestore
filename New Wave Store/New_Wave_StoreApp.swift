//
//  New_Wave_StoreApp.swift
//  New Wave Store
//
//  Created by Mason Z. on 11/26/24.
//

import SwiftUI

@main
struct New_Wave_StoreApp: App {
    @State var product: Products = Products() // testing
    var body: some Scene {
        WindowGroup {
            ProductListView() // switch back to ContentView - Current setup for testing
        }
    }
}
