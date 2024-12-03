//
//  ContentView.swift
//  New Wave Store
//
//  Created by Mason Z. on 11/26/24.
//

import SwiftUI



struct ContentView: View {

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(Constants.buttonFont)
                .background(Color.backgroundGreen)
                .foregroundColor(Color.blue)
        }.font(.system(size: 20))
        .padding()
    }
}

#Preview {
    ContentView()
}
